import 'package:flutter/material.dart';

class MinhaGaragem extends StatefulWidget {
  @override
  _MinhaGaragemState createState() => _MinhaGaragemState();
}

class _MinhaGaragemState extends State<MinhaGaragem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha Garagem"),
      ),
      body: Container(
        child: Text(
            " Aqui tera uma lista de veiculos cadastrados com botao detalhar veiculos e em detalhar"
            "veiculos irao ter todas as o.s e informacoes sobre aquele veiculo cadastrado "),
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
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
