import 'package:flutter/material.dart';
import 'package:mecanicasystemappclientes/utils/RouteGenerator.dart';

class VeiculoDetalheAbaOS extends StatefulWidget {
  @override
  _VeiculoDetalheAbaOSState createState() => _VeiculoDetalheAbaOSState();
}

class _VeiculoDetalheAbaOSState extends State<VeiculoDetalheAbaOS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(







      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            Navigator.pushNamed(context, RouteGenerator.ROTA_ADICIONAR_OS_VEICULO);
        },
        tooltip: 'Increment Counter',
        child: Icon(Icons.add_circle),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


    );
  }
}
