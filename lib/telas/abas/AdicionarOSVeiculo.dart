import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mecanicasystemappclientes/model/VeiculoCliente.dart';
import 'package:mecanicasystemappclientes/utils/RouteGenerator.dart';

class AdicionarOSVeiculo extends StatefulWidget {

  VeiculoCliente veiculoCliente = VeiculoCliente();
  AdicionarOSVeiculo({this.veiculoCliente});

  @override
  _AdicionarOSVeiculoState createState() => _AdicionarOSVeiculoState();
}

class _AdicionarOSVeiculoState extends State<AdicionarOSVeiculo> {
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
                      "imagens/os.jpg",
                      width: 200,
                      height: 150,
                    )),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: TextField(
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
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
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
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
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
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
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
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
                      autofocus: true,
                      keyboardType: TextInputType.numberWithOptions(),
                      style: TextStyle(fontSize: 20),
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
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 20),
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
        onPressed: () {},
        tooltip: 'Increment Counter',
        child: Icon(Icons.add_circle),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
