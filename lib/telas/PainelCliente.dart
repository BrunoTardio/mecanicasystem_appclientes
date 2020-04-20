import 'package:flutter/material.dart';

class PainelCliente extends StatefulWidget {
  @override
  _PainelClienteState createState() => _PainelClienteState();
}

class _PainelClienteState extends State<PainelCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Serviços"),
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
                    onPressed: () {


                    },
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
                    onPressed: () {


                    },
                  ),
                ), Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 10),
                  child: RaisedButton(
                    child: Text("Solicitar guincho",
                        style: TextStyle(color: Colors.black87, fontSize: 20)),
                    color: Colors.grey[50],
                    padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                    onPressed: () {
                    },
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
