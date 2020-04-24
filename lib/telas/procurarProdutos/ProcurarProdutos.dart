import 'package:flutter/material.dart';

class ProcurarProdutos extends StatefulWidget {
  @override
  _ProcurarProdutosState createState() => _ProcurarProdutosState();
}

class _ProcurarProdutosState extends State<ProcurarProdutos> {
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
                    " Aqui serao descrito todas as informacoes de produtos para comprar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
