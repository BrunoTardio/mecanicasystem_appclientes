class Usuario {
  String _nome;
  String _cpf;
  String _email;
  String _senha;
  String _idUsuario;
  String _tipoUser;
  String _telefone;
  String _cnpj;

  Usuario();

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "nome": this.nome,
      "email": this.email,
      "cpf": this.cpf,
      "tipoUser": this.tipoUser,
      "telefone": this.telefone,
      "cnpj":this.cnpj
    };
    return map;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  String get cpf => _cpf;

  String get idUsuario => _idUsuario;

  set idUsuario(String value) {
    _idUsuario = value;
  }

  String get senha => _senha;

  set senha(String value) {
    _senha = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  set cpf(String value) {
    _cpf = value;
  }

  String get tipoUser => _tipoUser;

  set tipoUser(String value) {
    _tipoUser = value;
  }

  String get telefone => _telefone;

  set telefone(String value) {
    _telefone = value;
  }

  String get cnpj => _cnpj;

  set cnpj(String value) {
    _cnpj = value;
  }
}
