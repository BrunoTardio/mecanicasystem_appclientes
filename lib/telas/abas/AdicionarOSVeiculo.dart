import 'package:brasil_fields/brasil_fields.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:mecanicasystemappclientes/model/VeiculoCliente.dart';
import 'package:flutter_masked_text/flutter_masked_text.Dart';

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
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Kilometragem atual do veículo",
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
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Descreva os problemas encontrados",
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
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Descreva os itens usados para manutenção",
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
                    keyboardType: TextInputType.text,
                    autofocus: true,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "tipo de manutenção ex: Elétrico",
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

                      inputFormatters: [
                        WhitelistingTextInputFormatter.digitsOnly,
                        RealInputFormatter(centavos: true),
                      ],
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                          prefixText: "R\$",
                          contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                          hintText: "  valor total das peças",
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
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                      RealInputFormatter(centavos: true),
                    ],
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        prefixText: "R\$",
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "  valor total da mão de obra",
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
