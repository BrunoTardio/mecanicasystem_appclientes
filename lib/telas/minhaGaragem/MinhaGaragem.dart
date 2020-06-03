import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mecanicasystemappclientes/model/Usuario.dart';
import 'package:mecanicasystemappclientes/model/VeiculoCliente.dart';
import 'package:mecanicasystemappclientes/telas/minhaGaragem/VeiculoDetalhe.dart';
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
        //.orderBy("kilometragemAtual", descending: false)
        .getDocuments();

    List<VeiculoCliente> listaVeiculos = List();
    for (DocumentSnapshot item in querySnapshot.documents) {
      var dados = item.data;
      VeiculoCliente veiculo = VeiculoCliente();
      print(item.documentID);
      veiculo.idVeiculo = item.documentID;
      veiculo.tipoVeiculo = dados['tipoVeiculo'];
      print(veiculo.tipoVeiculo);
      veiculo.nomeVeiculo = dados['nomeVeiculo'];
      veiculo.placaVeiculo = dados['placaVeiculo'];
      veiculo.kilometragemAtual = dados['kilometragemAtual'];
      veiculo.anoVeiculo = dados['anoVeiculo'];
      veiculo.montadoraVeiculo = dados['montadoraVeiculo'];
      Timestamp time = dados['dataCadastro'];
      veiculo.dataCadastro = DateTime.tryParse(time.toDate().toUtc().toIso8601String());

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
          title: Text(
            "Minha Garagem",
            style: TextStyle(color: Colors.deepPurple),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, RouteGenerator.ROTA_PAINEL_CLIENTE, (_) => false);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.directions_car,
                color: Colors.deepPurple,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.description),
              onPressed: () {},
            )
          ]),
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
                    mainAxisAlignment: MainAxisAlignment.start,
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
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veículo :  " + veiculoCliente.nomeVeiculo,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Placa :  " + veiculoCliente.placaVeiculo,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Tipo :  " + veiculoCliente.tipoVeiculo,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Ano :  " + veiculoCliente.anoVeiculo.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Kilometragem Atual :  " + veiculoCliente.kilometragemAtual.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
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
