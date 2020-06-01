import 'package:flutter/material.dart';
class VeiculoDetalheAbaDetalhes extends StatefulWidget {
  @override
  _VeiculoDetalheAbaDetalhesState createState() => _VeiculoDetalheAbaDetalhesState();
}

class _VeiculoDetalheAbaDetalhesState extends State<VeiculoDetalheAbaDetalhes> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(






      ),

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        tooltip: 'Increment Counter',
        child: Icon(Icons.settings),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


    );
  }
}

