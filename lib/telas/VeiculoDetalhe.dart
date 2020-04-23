import 'package:flutter/material.dart';
import 'package:mecanicasystemappclientes/model/VeiculoCliente.dart';
import 'package:mecanicasystemappclientes/telas/abas/VeiculoDetalheAbaDetalhes.dart';
import 'package:mecanicasystemappclientes/telas/abas/VeiculoDetalheAbaOS.dart';

class VeiculoDetalhe extends StatefulWidget {
  String _idUsuarioLogado;

  VeiculoCliente _veiculoCliente = VeiculoCliente();

  VeiculoDetalhe(this._idUsuarioLogado, this._veiculoCliente);

  String get idUsuarioLogado => _idUsuarioLogado;

  set idUsuarioLogado(String value) {
    _idUsuarioLogado = value;
  }

  @override
  _VeiculoDetalheState createState() => _VeiculoDetalheState();

  VeiculoCliente get veiculoCliente => _veiculoCliente;

  set veiculoCliente(VeiculoCliente value) {
    _veiculoCliente = value;
  }
}

class _VeiculoDetalheState extends State<VeiculoDetalhe>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<String> itensMenu = ["Configuracoes", "Deslogar"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.veiculoCliente.nomeVeiculo}"),
        bottom: TabBar(
          indicatorWeight: 4,
          labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          controller: _tabController,
          indicatorColor: Colors.blue,
          tabs: <Widget>[
            Tab(
              text: "Historico de OS",
            ),
            Tab(
              text: "Detalhes",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[VeiculoDetalheAbaOS(),VeiculoDetalheAbaDetalhes()],
      ),
    );
  }
}
