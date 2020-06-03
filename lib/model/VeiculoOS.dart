import 'dart:ffi';

class VeiculoOS {
  String _idVeiculoOS;
  String _localResponsavelOS;
  String _colaboradorResponsavelOS;
  String _problemasOS;
  int _kilometragemOS;
  String _itensOS;
  String _tipoOS;
  double _valorPecasOS;
  double _valorMaoDeObraOS;
  String _statusOS;
  DateTime _dataOS;

  VeiculoOS();

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "localResponsavelOS": this._localResponsavelOS,
      "problemasOS": this.problemasOS,
      "kilometragemOS": this.kilometragemOS,
      "itensOS": this.itensOS,
      "tipoOS": this.tipoOS,
      "valorPecasOS": this.valorPecasOS,
      "valorMaoDeObra": this.valorMaoDeObraOS,
      "colaboradorResponsavelOS": this.colaboradorResponsavelOS,
      "statusOS": this.statusOS,
      "dataOS": this.dataOS
    };
    return map;
  }

  String get localResponsavelOS => _localResponsavelOS;

  set localResponsavelOS(String value) {
    _localResponsavelOS = value;
  }

  String get idVeiculoOS => _idVeiculoOS;

  set idVeiculoOS(String value) {
    _idVeiculoOS = value;
  }

  String get problemasOS => _problemasOS;

  String get tipoOS => _tipoOS;

  set tipoOS(String value) {
    _tipoOS = value;
  }

  String get itensOS => _itensOS;

  set itensOS(String value) {
    _itensOS = value;
  }

  set problemasOS(String value) {
    _problemasOS = value;
  }

  int get kilometragemOS => _kilometragemOS;

  set kilometragemOS(int value) {
    _kilometragemOS = value;
  }

  DateTime get dataOS => _dataOS;

  set dataOS(DateTime value) {
    _dataOS = value;
  }

  String get statusOS => _statusOS;

  set statusOS(String value) {
    _statusOS = value;
  }

  String get colaboradorResponsavelOS => _colaboradorResponsavelOS;

  set colaboradorResponsavelOS(String value) {
    _colaboradorResponsavelOS = value;
  }

  double get valorMaoDeObraOS => _valorMaoDeObraOS;

  set valorMaoDeObraOS(double value) {
    _valorMaoDeObraOS = value;
  }

  double get valorPecasOS => _valorPecasOS;

  set valorPecasOS(double value) {
    _valorPecasOS = value;
  }
}
