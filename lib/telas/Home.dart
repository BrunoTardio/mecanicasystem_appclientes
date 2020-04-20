import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MecanicaSytem Cliente"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[200]),
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text("Imagem"),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text("Inserir email"),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text("Inserir Senha"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
