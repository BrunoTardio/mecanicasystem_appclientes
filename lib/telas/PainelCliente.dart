import 'package:flutter/material.dart';
import 'package:mecanicasystemappclientes/utils/RouteGenerator.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PainelCliente extends StatefulWidget {
  @override
  _PainelClienteState createState() => _PainelClienteState();
}

class _PainelClienteState extends State<PainelCliente> {
  List<String> itensMenu = ["Configuracoes", "Deslogar"];

  _escolhaMenuItem(String itemEscolhido) {
    switch (itemEscolhido) {
      case "Configurações":
        Text("Em desenvolvimento ...");
        break;
      case "Deslogar":
        _deslogarUsuario();
        break;
    }
  }

  _deslogarUsuario() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    await auth.signOut();
    Navigator.pushReplacementNamed(context, RouteGenerator.ROTA_LOGIN);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MecanicaSystem"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {

            },
          ),
          IconButton(
            icon: Icon(Icons.directions_car),
            onPressed: () {

            },

          ),


          PopupMenuButton<String>(
            onSelected: _escolhaMenuItem,
            itemBuilder: (contex) {
              return itensMenu.map((String item) {
                return PopupMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList();
            },
          )
        ],







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
                      "imagens/painelcliente.jpg",
                      width: 200,
                      height: 150,
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 10),
                  child: RaisedButton(
                    child: Text("Minha garagem",
                        style: TextStyle(color: Colors.black87, fontSize: 20)),
                    color: Colors.grey[50],
                    padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                    onPressed: () {
                      Navigator.pushNamed(
                          context, RouteGenerator.ROTA_MINHA_GARAGEM);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 10),
                  child: RaisedButton(
                    child: Text("Procurar mecânicos",
                        style: TextStyle(color: Colors.black87, fontSize: 20)),
                    color: Colors.grey[50],
                    padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 10),
                  child: RaisedButton(
                    child: Text("Buscar peças automotivas",
                        style: TextStyle(color: Colors.black87, fontSize: 20)),
                    color: Colors.grey[50],
                    padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 10),
                  child: RaisedButton(
                    child: Text("Solicitar guincho",
                        style: TextStyle(color: Colors.black87, fontSize: 20)),
                    color: Colors.grey[50],
                    padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 10),
                  child: RaisedButton(
                    child: Text("Ferramentas",
                        style: TextStyle(color: Colors.black87, fontSize: 20)),
                    color: Colors.grey[50],
                    padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                    onPressed: () {

                      Navigator.pushNamed(
                          context, RouteGenerator.ROTA_ALCOOL_GASOLINA);


                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 10),
                  child: RaisedButton(
                    child: Text("Sobre o Aplicativo",
                        style: TextStyle(color: Colors.black87, fontSize: 20)),
                    color: Colors.grey[50],
                    padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                    onPressed: () {
                      Navigator.pushNamed(
                          context, RouteGenerator.ROTA_INFO_APLICATIVO);

                    },
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
