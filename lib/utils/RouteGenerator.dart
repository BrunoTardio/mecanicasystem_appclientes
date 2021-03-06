import 'package:flutter/material.dart';
import 'package:mecanicasystemappclientes/model/VeiculoCliente.dart';
import 'package:mecanicasystemappclientes/telas/ferramentas/alcoolgasolina.dart';
import 'package:mecanicasystemappclientes/telas/infoAplicativo/infoAplicativo.dart';
import 'package:mecanicasystemappclientes/telas/login/RecuperarSenha.dart';
import 'package:mecanicasystemappclientes/telas/minhaGaragem/AdicionarVeiculoCliente.dart';
import 'file:///C:/Users/bruno/AndroidStudioProjects/Flutter/mecanicasystem_appclientes/lib/telas/login/CadastrarCliente.dart';
import 'file:///C:/Users/bruno/AndroidStudioProjects/Flutter/mecanicasystem_appclientes/lib/telas/login/Login.dart';
import 'package:mecanicasystemappclientes/telas/minhaGaragem/MinhaGaragem.dart';
import 'package:mecanicasystemappclientes/telas/PainelCliente.dart';

class RouteGenerator {
  static const String ROTA_PAINEL_CLIENTE = "/telas/PainelCliente";
  static const String ROTA_LOGIN = "/telas/login/Login";
  static const String ROTA_RECUPERAR_SENHA ="/telas/login/RecuperarSenha";
  static const String ROTA_CADASTRAR_CLIENTE = "/telas/login/CadastrarCliente";

  static const String ROTA_MINHA_GARAGEM = "/telas/MinhaGaragem";
  static const String ROTA_ADICIONAR_VEICULO_CLIENTE ="/telas/minhaGaragem/AdicionarVeiculoCliente";

  static const String ROTA_ADICIONAR_OS_VEICULO ="/telas/abas/AdicionarOSVeiculo";
  static const String ROTA_INFO_APLICATIVO = "/telas/infoaplicativo/infoaplicativo";
  static const String ROTA_ALCOOL_GASOLINA ="/telas/ferramentas/AlcoolGasolina";

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
      case ROTA_MINHA_GARAGEM:
        return MaterialPageRoute(builder: (_) => MinhaGaragem());
      case ROTA_ADICIONAR_VEICULO_CLIENTE:
        return MaterialPageRoute(builder: (_) => AdicionarVeiculoCLiente());
      case ROTA_RECUPERAR_SENHA:
        return MaterialPageRoute(builder: (_) => RecuperarSenha());
      case ROTA_INFO_APLICATIVO:
        return MaterialPageRoute(builder: (_) => inforAplicativo());
      case ROTA_ALCOOL_GASOLINA:
        return MaterialPageRoute(builder: (_) => AlcoolGasolina());
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
