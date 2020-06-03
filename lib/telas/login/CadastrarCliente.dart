import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mecanicasystemappclientes/model/Usuario.dart';
import 'package:mecanicasystemappclientes/utils/RouteGenerator.dart';

class CadastrarCliente extends StatefulWidget {
  @override
  _CadastrarClienteState createState() => _CadastrarClienteState();
}

class _CadastrarClienteState extends State<CadastrarCliente> {
  // Formulario controladores
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail1 = TextEditingController();
  TextEditingController _controllerEmail2 = TextEditingController();
  TextEditingController _controllerSenha1 = TextEditingController();
  TextEditingController _controllerSenha2 = TextEditingController();
  TextEditingController _controllerCPF = TextEditingController();
  TextEditingController _controllerTelefone = TextEditingController();
  String _mensagemErro = "";

  // funcionalidades da pagina

  _ValidarCampos() {
    String nome = _controllerNome.text;
    String email1 = _controllerEmail1.text;
    String email2 = _controllerEmail1.text;
    String senha1 = _controllerSenha1.text;
    String senha2 = _controllerSenha2.text;
    String cpf = _controllerCPF.text;
    String telefone = _controllerTelefone.text;

    if (cpf.isNotEmpty) {
      if (nome.isNotEmpty && nome.length > 3) {
        if ((email1.toString() == email2.toString()) &&
            email1.isNotEmpty &&
            email1.contains("@") && email1.contains(".")) {
          if ((senha1.toString() == senha2.toString()) && senha1.length > 5) {
            setState(() {
              _mensagemErro = "";
            });
            Usuario usuario = Usuario();
            usuario.nome = nome;
            usuario.email = email1;
            usuario.senha = senha1;
            usuario.cpf = cpf;
            usuario.cnpj = "";
            usuario.tipoUser = "cliente";
            usuario.telefone = telefone.isEmpty ? "" : telefone;

            _CadastrarUsuario(usuario);
          } else {
            setState(() {
              _mensagemErro = "senha deve conter ao menos 6 caracteres";
            });
          }
        } else {
          setState(() {
            _mensagemErro =
                "verificar se o email esta correto e se possui o '@' ";
          });
        }
      } else {
        setState(() {
          _mensagemErro = "preencha seu nome completo ";
        });
      }
    } else {
      setState(() {
        _mensagemErro = "preencha todos os dados corretamente";
      });
    }
  }

  _CadastrarUsuario(Usuario usuario) {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth
        .createUserWithEmailAndPassword(
            email: usuario.email, password: usuario.senha)
        .then((firebaseUser) {
      Firestore db = Firestore.instance;
      db
          .collection("usuarios")
          .document(firebaseUser.user.uid)
          .setData(usuario.toMap());
      print("firebase user gerado :" + firebaseUser.user.uid);

      Navigator.pushNamedAndRemoveUntil(
          context, RouteGenerator.ROTA_PAINEL_CLIENTE, (_) => false);
    }).catchError((error) {
      setState(() {
        _mensagemErro = "Erro ao cadastrar o usuário ";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar-se"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[200]),
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child: Image.asset(
                      "imagens/cadastrar.jpg",
                      width: 200,
                      height: 150,
                    )),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: TextField(
                    controller: _controllerNome,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Seu nome e sobrenome",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        )),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: TextField(
                      controller: _controllerCPF,
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                          hintText: "Seu CPF apenas números",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                          )),
                    )),
                Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: TextField(
                      controller: _controllerTelefone,
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                          hintText: "Caso queira, informe um telefone",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                          )),
                    )),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: TextField(
                    controller: _controllerEmail1,
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Seu E-mail",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: TextField(
                    controller: _controllerEmail2,
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Confirme seu E-mail",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: TextField(
                    controller: _controllerSenha1,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Informe sua senha",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: TextField(
                    controller: _controllerSenha2,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Confirme sua senha ",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 10),
                  child: RaisedButton(
                    child: Text(" CADASTRAR ",
                        style:
                            TextStyle(color: Colors.deepPurple, fontSize: 20)),
                    color: Colors.grey[50],
                    padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                    onPressed: () {
                      _ValidarCampos();
                    },
                  ),
                ),
                Center(
                  child: Text(
                    _mensagemErro,
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
