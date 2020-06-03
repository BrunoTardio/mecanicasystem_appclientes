import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RecuperarSenha extends StatefulWidget {
  @override
  _RecuperarSenhaState createState() => _RecuperarSenhaState();
}

class _RecuperarSenhaState extends State<RecuperarSenha> {
  String _mensagem = " ";

  TextEditingController _controllerEmail = new TextEditingController();

  _ValidaEmail() {
    String email = _controllerEmail.text;
    if (email.isNotEmpty && email.contains("@") && email.contains(".")) {
      _RecuperarSenhaUsuario(email);
      setState(() {
        _mensagem = "Enviado uma nova senha para o email " + email;
      });
    } else {
      setState(() {
        _mensagem = "Informe um email válido";
      });
    }
  }

  _RecuperarSenhaUsuario(String email) {
    FirebaseAuth _auth = FirebaseAuth.instance;
    _auth.sendPasswordResetEmail(email: email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recuperar Senha"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[200]),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image.asset(
                  "imagens/chave.png",
                  width: 200,
                  height: 150,
                )),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  _mensagem,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: TextField(
                controller: _controllerEmail,
                autofocus: true,
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "Informe o seu email de cadastro",
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
                child: Text(" ENVIAR ",
                    style: TextStyle(color: Colors.deepPurple, fontSize: 20)),
                color: Colors.grey[50],
                padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
                onPressed: () {
                  _ValidaEmail();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
