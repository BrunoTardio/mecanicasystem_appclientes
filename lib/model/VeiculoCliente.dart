class VeiculoCliente {
  String _idVeiculo;

  String _tipoVeiculo;

  String _montadoraVeiculo;

  String _nomeVeiculo;

  String _modeloVeiculo;

  int _anoVeiculo;

  DateTime _dataCadastro;

  String _placaVeiculo;

  int _kilometragemDeCadastro;

  int _kilometragemAtual;

  VeiculoCliente();

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "tipoVeiculo": this.tipoVeiculo,
      "montadoraVeiculo": this.montadoraVeiculo,
      "nomeVeiculo": this.nomeVeiculo,
      "anoVeiculo": this.anoVeiculo,
      "kilometragemDeCadastro": this._kilometragemDeCadastro,
      "kilometragemAtual": this.kilometragemAtual,
      "placaVeiculo": this.placaVeiculo,
      "dataCadastro": this.dataCadastro
    };
    return map;
  }

  String get placaVeiculo => _placaVeiculo;

  set placaVeiculo(String value) {
    _placaVeiculo = value;
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

  String get idVeiculo => _idVeiculo;

  set idVeiculo(String value) {
    _idVeiculo = value;
  }

  int get kilometragemAtual => _kilometragemAtual;

  set kilometragemAtual(int value) {
    _kilometragemAtual = value;
  }

  int get kilometragemDeCadastro => _kilometragemDeCadastro;

  set kilometragemDeCadastro(int value) {
    _kilometragemDeCadastro = value;
  }

  DateTime get dataCadastro => _dataCadastro;

  set dataCadastro(DateTime value) {
    _dataCadastro = value;
  }

  int get anoVeiculo => _anoVeiculo;

  set anoVeiculo(int value) {
    _anoVeiculo = value;
  }

  String get modeloVeiculo => _modeloVeiculo;

  set modeloVeiculo(String value) {
    _modeloVeiculo = value;
  }
}
