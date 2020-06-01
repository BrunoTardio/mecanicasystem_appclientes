import 'package:brasil_fields/brasil_fields.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:mecanicasystemappclientes/model/VeiculoCliente.dart';
import 'package:mecanicasystemappclientes/model/VeiculoOS.dart';

import '../VeiculoDetalhe.dart';

class AdicionarOSVeiculo extends StatefulWidget {
  String _idUsuarioLogado;

  VeiculoCliente _veiculoCliente = VeiculoCliente();

  AdicionarOSVeiculo(this._idUsuarioLogado, this._veiculoCliente);

  String get idUsuarioLogado => _idUsuarioLogado;

  set idUsuarioLogado(String value) {
    _idUsuarioLogado = value;
  }

  @override
  _AdicionarOSVeiculoState createState() => _AdicionarOSVeiculoState();

  VeiculoCliente get veiculoCliente => _veiculoCliente;

  set veiculoCliente(VeiculoCliente value) {
    _veiculoCliente = value;
  }
}

class _AdicionarOSVeiculoState extends State<AdicionarOSVeiculo> {
  TextEditingController _kilometroVeiculo = TextEditingController();
  TextEditingController _osProblemas = TextEditingController();
  TextEditingController _osItens = TextEditingController();
  TextEditingController _osTipo = TextEditingController();
  TextEditingController _osValorPecas = TextEditingController();
  TextEditingController _osValorMaoDeObra = TextEditingController();

  _SalvarOS() async {
    String kilometroVeiculo = _kilometroVeiculo.text;
    String osProblemas = _osProblemas.text;
    String osItens = _osItens.text;
    String osTipo = _osTipo.text;
    String osValorPecas = _osValorPecas.text;
    String osValorMaoDeObra = _osValorMaoDeObra.text;
    if (kilometroVeiculo.isNotEmpty) {
      if (osProblemas.isNotEmpty) {
        if (osItens.isNotEmpty) {
          if (osTipo.isNotEmpty) {
            if (osValorPecas.isNotEmpty) {
              if (osValorPecas.isNotEmpty) {
                FirebaseAuth auth = FirebaseAuth.instance;
                FirebaseUser usuarioLogado = await auth.currentUser();
                VeiculoOS veiculoOS = VeiculoOS();
                veiculoOS.kilometragemOS = kilometroVeiculo;
                veiculoOS.valorPecasOS = osValorPecas;
                veiculoOS.itensOS = osItens;
                veiculoOS.problemasOS = osProblemas;
                veiculoOS.tipoOS = osTipo;
                veiculoOS.valorMaoDeObraOS = osValorMaoDeObra;
                veiculoOS.localResponsavelOS = usuarioLogado.email;

                Firestore db = Firestore.instance;
                DocumentReference docRef = await db
                    .collection("usuarios")
                    .document(usuarioLogado.uid)
                    .collection("veiculos")
                    .document(widget._veiculoCliente.idVeiculo)
                    .collection("OS")
                    .add(veiculoOS.toMap());
                print(docRef.documentID);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => VeiculoDetalhe(
                            widget._idUsuarioLogado, widget.veiculoCliente)));
              }
            }
          }
        }
      }
    }
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
                    controller: _kilometroVeiculo,
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
                    controller: _osProblemas,
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
                    controller: _osItens,
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
                    controller: _osTipo,
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
                      controller: _osValorPecas,
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
                    controller: _osValorMaoDeObra,
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
        onPressed: () {
          _SalvarOS();
        },
        tooltip: 'Increment Counter',
        child: Icon(Icons.add_circle),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
