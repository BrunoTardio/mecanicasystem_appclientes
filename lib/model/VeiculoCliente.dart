class VeiculoCliente {
  String _tipoVeiculo;

  String _montadoraVeiculo;

  String _nomeVeiculo;

  String _anoVeiculo;

  String _kilometragemVeiculo;

  String _placaVeiculo;

  VeiculoCliente();

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "tipoVeiculo": this.tipoVeiculo,
      "montadoraVeiculo": this.montadoraVeiculo,
      "nomeVeiculo": this.nomeVeiculo,
      "anoVeiculo": this.anoVeiculo,
      "kilometragemVeiculo": this.kilometragemVeiculo,
      "placaVeiculo": this.placaVeiculo,
    };
    return map;
  }

  String get placaVeiculo => _placaVeiculo;

  set placaVeiculo(String value) {
    _placaVeiculo = value;
  }

  String get kilometragemVeiculo => _kilometragemVeiculo;

  set kilometragemVeiculo(String value) {
    _kilometragemVeiculo = value;
  }

  String get anoVeiculo => _anoVeiculo;

  set anoVeiculo(String value) {
    _anoVeiculo = value;
  }

  String get nomeVeiculo => _nomeVeiculo;

  set nomeVeiculo(String value) {
    _nomeVeiculo = value;
  }

  String get montadoraVeiculo => _montadoraVeiculo;

  set montadoraVeiculo(String value) {
    _montadoraVeiculo = value;
  }

  String get tipoVeiculo => _tipoVeiculo;

  set tipoVeiculo(String value) {
    _tipoVeiculo = value;
  }
}
