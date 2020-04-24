import 'package:flutter/material.dart';

class ProcurarServicos extends StatefulWidget {
  @override
  _ProcurarServicosState createState() => _ProcurarServicosState();
}

class _ProcurarServicosState extends State<ProcurarServicos> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(" Informações do aplicativo"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                child: Text(
                    " aqui sera possivel recuperar servicos de mecanicos "),
              )
            ],
          ),
        ),
      ),
    );
  }
}