class VeiculoOS {
  String _idVeiculoOS;
  String _localResponsavelOS;
  String _problemasOS;
  String _kilometragemOS;
  String _itensOS;
  String _tipoOS;
  String _valorPecasOS;
  String _valorMaoDeObraOS;

  VeiculoOS();

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "localResponsavelOS": this._localResponsavelOS,
      "problemasOS": this.problemasOS,
      "itensOS": this.itensOS,
      "valorPecasOS": this.valorPecasOS,
      "valorMaoDeObra": this.valorPecasOS,
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

  String get valorMaoDeObraOS => _valorMaoDeObraOS;

  set valorMaoDeObraOS(String value) {
    _valorMaoDeObraOS = value;
  }

  String get valorPecasOS => _valorPecasOS;

  set valorPecasOS(String value) {
    _valorPecasOS = value;
  }

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

  String get kilometragemOS => _kilometragemOS;

  set kilometragemOS(String value) {
    _kilometragemOS = value;
  }
}
