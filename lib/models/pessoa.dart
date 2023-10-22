class Pessoa {
  final String _nome;
  double _altura = 0.0;
  double _peso = 0.0;

  Pessoa(this._nome);

  String getNome() {
    return _nome;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }
}
