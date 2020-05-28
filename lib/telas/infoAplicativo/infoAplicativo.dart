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
        body: Center(
          child: Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                print('Card tapped.');
              },
              child: Container(
                width: 300,
                height: 100,
                child: Text("Texto referente as informacoes"),
              ),
            ),
          ),
        ));
  }
}
