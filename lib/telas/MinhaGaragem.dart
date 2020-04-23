import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mecanicasystemappclientes/model/Usuario.dart';
import 'package:mecanicasystemappclientes/model/VeiculoCliente.dart';
import 'package:mecanicasystemappclientes/telas/VeiculoDetalhe.dart';
import 'package:mecanicasystemappclientes/utils/RouteGenerator.dart';

class MinhaGaragem extends StatefulWidget {
  @override
  _MinhaGaragemState createState() => _MinhaGaragemState();
}

class _MinhaGaragemState extends State<MinhaGaragem> {
  String _idUsuarioLogado;

  Future<List<VeiculoCliente>> _recuperarVeiculos() async {
    Firestore db = Firestore.instance;
    await _recuperarDadosUsuario();
    QuerySnapshot querySnapshot = await db
        .collection("usuarios")
        .document(_idUsuarioLogado)
        .collection("veiculos")
        .getDocuments();

    List<VeiculoCliente> listaVeiculos = List();
    for (DocumentSnapshot item in querySnapshot.documents) {
      var dados = item.data;
      VeiculoCliente veiculo = VeiculoCliente();
      veiculo.tipoVeiculo = dados['tipoVeiculo'];
      veiculo.nomeVeiculo = dados['nomeVeiculo'];
      veiculo.placaVeiculo = dados['placaVeiculo'];
      veiculo.kilometragemVeiculo = dados['kilometragemVeiculo'];
      veiculo.anoVeiculo = dados['anoVeiculo'];
      veiculo.montadoraVeiculo = dados['montadoraVeiculo'];

      listaVeiculos.add(veiculo);
    }
    return listaVeiculos;
  }

  _recuperarDadosUsuario() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseUser user = await auth.currentUser();
    _idUsuarioLogado = user.uid;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha Garagem"),
      ),
      body: Container(
        child: FutureBuilder<List<VeiculoCliente>>(
          future: _recuperarVeiculos(),
          // ignore: missing_return
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(
                  child: Column(
                    children: <Widget>[
                      Text("Carregando veiculos"),
                      CircularProgressIndicator()
                    ],
                  ),
                );
                break;

              case ConnectionState.active:
              case ConnectionState.done:
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (_, indice) {
                      List<VeiculoCliente> listaItens = snapshot.data;
                      VeiculoCliente veiculoCliente = listaItens[indice];

                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => VeiculoDetalhe(
                                      _idUsuarioLogado, veiculoCliente)));
                        },
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veículo :  " + veiculoCliente.nomeVeiculo,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Placa :  " + veiculoCliente.placaVeiculo,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    });
            }
          },
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
          Navigator.pushNamed(
              context, RouteGenerator.ROTA_ADICIONAR_VEICULO_CLIENTE);
        },
        tooltip: 'Increment Counter',
        child: Icon(Icons.add_circle),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
