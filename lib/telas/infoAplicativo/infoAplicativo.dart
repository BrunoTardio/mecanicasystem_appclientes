import 'package:flutter/material.dart';

class inforAplicativo extends StatefulWidget {
  @override
  _inforAplicativoState createState() => _inforAplicativoState();
}

class _inforAplicativoState extends State<inforAplicativo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informações do aplicativo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    print('Card tapped.');
                  },
                  child: Container(
                    width: 300,
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Sobre o aplicativo :",style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(" Tem a proposta de ser o maior inovador em serviços relacionado ao universo da mecanica")

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    print('Card tapped.');
                  },
                  child: Container(
                    width: 300,
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "MecanicaSystem :",style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(" É um aplicativo que auxilia o encontro de clientes e empresas para diversos servicos mecanicos")

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    print('Card tapped.');
                  },
                  child: Container(
                    width: 300,
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Desenvolvimento :",style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(" O sistema esta sendo desenvolvido por Bruno Tardio, usando a tecnologia Flutter, com a proposta de lancar a versao final ainda em 2020")

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    print('Card tapped.');
                  },
                  child: Container(
                    width: 300,
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Doação:",style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("BANCO DO BRASIL // AG 32050 // CC 272361 // BRUNO T B SILVERIO , Obrigado =D")

                      ],
                    ),
                  ),
                ),
              ),
            ),





          ],
        ),




      ),
    );
  }
}
