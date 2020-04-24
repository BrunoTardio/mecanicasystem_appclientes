import 'package:flutter/material.dart';

class Aplicativo extends StatefulWidget {
  @override
  _AplicativoState createState() => _AplicativoState();
}

class _AplicativoState extends State<Aplicativo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Informações do aplicativo"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                child: Text(
                    " Aqui serao descrito todas as informacoes referente ao aplicativo"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
