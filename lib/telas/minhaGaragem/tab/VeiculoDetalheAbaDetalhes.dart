import 'package:flutter/material.dart';
import 'package:mecanicasystemappclientes/model/VeiculoCliente.dart';

class VeiculoDetalheAbaDetalhes extends StatefulWidget {
  String _idUsuarioLogado;

  VeiculoCliente _veiculoCliente = VeiculoCliente();

  VeiculoDetalheAbaDetalhes(this._idUsuarioLogado, this._veiculoCliente);

  String get idUsuarioLogado => _idUsuarioLogado;

  set idUsuarioLogado(String value) {
    _idUsuarioLogado = value;
  }

  @override
  _VeiculoDetalheAbaDetalhesState createState() =>
      _VeiculoDetalheAbaDetalhesState();

  VeiculoCliente get veiculoCliente => _veiculoCliente;

  set veiculoCliente(VeiculoCliente value) {
    _veiculoCliente = value;
  }
}

class _VeiculoDetalheAbaDetalhesState extends State<VeiculoDetalheAbaDetalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: <Widget>[
            Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "Ficha técnica",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Veículo :  " + widget._veiculoCliente.nomeVeiculo,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Placa :  " + widget._veiculoCliente.placaVeiculo,
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Montadora :  " +
                              widget._veiculoCliente.montadoraVeiculo,
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Ano :  " +
                              widget._veiculoCliente.anoVeiculo.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Km atual :  " +
                              widget._veiculoCliente.kilometragemAtual
                                  .toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Km de cadastro :  " +
                              widget._veiculoCliente.kilometragemDeCadastro
                                  .toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Data de cadastro :  " +
                              widget._veiculoCliente.dataCadastro.day
                                  .toString() +
                              "/" +
                              widget._veiculoCliente.dataCadastro.month
                                  .toString() +
                              "/" +
                              widget._veiculoCliente.dataCadastro.year
                                  .toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "Custos gerais ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Gasto em peças  :  ",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Gasto em mão de obra  :  ",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Custo médio por KM  :  ",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment Counter',
        child: Icon(Icons.settings),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
