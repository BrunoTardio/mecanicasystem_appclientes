import 'package:flutter/material.dart';
import 'package:mecanicasystemappclientes/telas/CadastrarCliente.dart';
import 'package:mecanicasystemappclientes/telas/Login.dart';
import 'package:mecanicasystemappclientes/telas/PainelCliente.dart';

class RouteGenerator {
  static const String ROTA_LOGIN = "/telas/Login";
  static const String ROTA_CADASTRAR_CLIENTE = "/telas/CadastrarCliente";
  static const String ROTA_PAINEL_CLIENTE = "/telas/PainelCliente";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => Login());
      case ROTA_LOGIN:
        return MaterialPageRoute(builder: (_) => Login());
      case ROTA_CADASTRAR_CLIENTE:
        return MaterialPageRoute(builder: (_) => CadastrarCliente());
      case ROTA_PAINEL_CLIENTE:
        return MaterialPageRoute(builder: (_) => PainelCliente());
      default:
        _erroRota();
    }
  }

  static Route<dynamic> _erroRota() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Tela não encontrada!"),
        ),
        body: Center(
          child: Text("Tela não encontrada!"),
        ),
      );
    });
  }
}
