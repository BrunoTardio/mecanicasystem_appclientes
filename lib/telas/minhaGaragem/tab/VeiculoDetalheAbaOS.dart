import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mecanicasystemappclientes/model/VeiculoCliente.dart';
import 'package:mecanicasystemappclientes/model/VeiculoOS.dart';
import 'package:mecanicasystemappclientes/telas/minhaGaragem/tab/AdicionarOSVeiculo.dart';

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
  Future<List<VeiculoOS>> _ListaOS() async {
    Firestore db = Firestore.instance;

    QuerySnapshot querySnapshot = await db
        .collection("usuarios")
        .document(widget._idUsuarioLogado)
        .collection("veiculos")
        .document(widget._veiculoCliente.idVeiculo)
        .collection("OS")
        .getDocuments();

    List<VeiculoOS> listaOS = List();
    for (DocumentSnapshot item in querySnapshot.documents) {
      var dados = item.data;
      VeiculoOS os = VeiculoOS();
      print(item.documentID);

      os.idVeiculoOS = item.documentID;
      os.kilometragemOS = dados['kilometragemOS'];
      os.localResponsavelOS = dados['localResponsavelOS'];
      os.colaboradorResponsavelOS = dados['colaboradorResponsavelOS'];
      os.itensOS = dados['itensOS'];
      os.problemasOS = dados['problemasOS'];
      os.tipoOS = dados['tipoOS'];
      os.valorMaoDeObraOS = dados['valorMaoDeObra'] ;
      os.valorPecasOS = dados['valorPecasOS'] ; // dividindo para corrigir string - sera necessario metodo
      os.dataOS =  DateTime.tryParse(dados['dataOS'].toDate().toUtc().toIso8601String());
      os.statusOS = dados['statusOS'];
      print("chegou aquiiiiiiiiiiii");
      listaOS.add(os);
    }
    return listaOS;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder<List<VeiculoOS>>(
          future: _ListaOS(),
          // ignore: missing_return
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Carregando O.S"),
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
                      List<VeiculoOS> listaItens = snapshot.data;
                      VeiculoOS veiculoOS = listaItens[indice];

                      return GestureDetector(
                        onTap: () {
                          // verificar cainho
                        },
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text(
                                  "Informações da O.S" ,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurple,
                                      fontSize: 18),
                                ),

                                Text(
                                  "Data do serviço :  " +
                                      veiculoOS.dataOS.day.toString() + "/"
                                      + veiculoOS.dataOS.month.toString() + "/"
                                      + veiculoOS.dataOS.year.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                      fontSize: 18),
                                ),

                                Text(
                                  "Kilometragem :  " +
                                      veiculoOS.kilometragemOS.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.red,
                                      fontSize: 18),
                                ),




                                Text(
                                  "Tipo de serviço :  " + veiculoOS.tipoOS,
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18),
                                ),
                                Text(
                                  "Problemas :  " + veiculoOS.problemasOS,
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18),
                                ),
                                Text(
                                  "Itens trocados:  " + veiculoOS.itensOS,
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18),
                                ),
                                Text(
                                  "Custo peças:  " +
                                      veiculoOS.valorPecasOS.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18),
                                ),
                                Text(
                                  "Custo mao de obra:  " +
                                      veiculoOS.valorMaoDeObraOS.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18),
                                ),
                                Text(
                                  "Local de serviço:  " +
                                      veiculoOS.localResponsavelOS,
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18),
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
