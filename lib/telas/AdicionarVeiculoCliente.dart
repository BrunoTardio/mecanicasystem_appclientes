import 'package:flutter/material.dart';
import 'package:mecanicasystemappclientes/telas/MinhaGaragem.dart';

class AdicionarVeiculoCLiente extends StatefulWidget {
  @override
  _AdicionarVeiculoCLienteState createState() =>
      _AdicionarVeiculoCLienteState();
}

class _AdicionarVeiculoCLienteState extends State<AdicionarVeiculoCLiente> {


  TextEditingController _controllerTipoVeiculo = TextEditingController();
  TextEditingController _controllerMontadoraVeiculo = TextEditingController();
  TextEditingController _controllerNomeVeiculo = TextEditingController();
  TextEditingController _controllerAnoVeiculo = TextEditingController();
  TextEditingController _controllerKilometragemVeiculo = TextEditingController();
  TextEditingController _controllerPlacaVeiculo = TextEditingController();

  _validarDados(){

    String tipoVeiculo = _controllerPlacaVeiculo.text;
    String montadoraVeiculo = _controllerMontadoraVeiculo.text;
    String nomeVeiculo = _controllerNomeVeiculo.text;
    String anoVeiculo = _controllerAnoVeiculo.text;
    String kilometragemVeiculo = _controllerKilometragemVeiculo.text;
    String placaVeiculo = _controllerPlacaVeiculo.text;



  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Descreva seu veículo"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[200]),
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child: Image.asset(
                      "imagens/veiculos.jpg",
                      width: 200,
                      height: 150,
                    )),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: TextField(
                    controller: _controllerTipoVeiculo ,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20 ),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Tipo de veículo, ex: Motocicleta",
                        hintStyle: TextStyle(fontSize: 16),
                        focusColor: Colors.black,
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        )),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: TextField(
                    controller: _controllerMontadoraVeiculo,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20 ),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Montadora, ex: Fiat",
                        hintStyle: TextStyle(fontSize: 16),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        )),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: TextField(
                    controller: _controllerNomeVeiculo,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20 ),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Nome do veículo, ex: Uno",
                        hintStyle: TextStyle(fontSize: 16),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: TextField(
                    controller: _controllerAnoVeiculo,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20 ),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "ano de fabricação , ex : 1998",
                        hintStyle: TextStyle(fontSize: 16),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        )),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: TextField(
                      controller: _controllerKilometragemVeiculo,
                      autofocus: true,
                      keyboardType: TextInputType.numberWithOptions(),
                      style: TextStyle(fontSize: 20 ),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                          hintText: "Kilometragem, ex: 250600",
                          hintStyle: TextStyle(fontSize: 16),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                          )),
                    )),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: TextField(
                    controller: _controllerPlacaVeiculo,
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 20 ),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Número da placa , ex : PUA1010",
                        hintStyle: TextStyle(fontSize: 16),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        )),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         _validarDados();
        },
        tooltip: 'Increment Counter',
        child: Icon(Icons.add_circle),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
