import 'package:flutter/material.dart';
import 'package:mecanicasystemappclientes/model/VeiculoCliente.dart';
import 'package:mecanicasystemappclientes/telas/minhaGaragem/tab/AdicionarOSVeiculo.dart';
import 'package:mecanicasystemappclientes/utils/RouteGenerator.dart';

class VeiculoDetalheAbaOS extends StatefulWidget {
  String _idUsuarioLogado;

  VeiculoCliente _veiculoCliente = VeiculoCliente();

  VeiculoDetalheAbaOS(this._idUsuarioLogado, this._veiculoCliente);

  String get idUsuarioLogado => _idUsuarioLogado;

  set idUsuarioLogado(String value) {
    _idUsuarioLogado = value;
  }

  @override
  _VeiculoDetalheAbaOSState createState() => _VeiculoDetalheAbaOSState();

  VeiculoCliente get veiculoCliente => _veiculoCliente;

  set veiculoCliente(VeiculoCliente value) {
    _veiculoCliente = value;
  }
}

class _VeiculoDetalheAbaOSState extends State<VeiculoDetalheAbaOS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("${widget.veiculoCliente.nomeVeiculo}"),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // esta fora do padrao
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AdicionarOSVeiculo(
                widget._idUsuarioLogado, widget._veiculoCliente);
          }));

        },
        tooltip: 'Increment Counter',
        child: Icon(Icons.add_circle),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}