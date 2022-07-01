void main () {

  Pessoa pessoa = Pessoa ('Julia', 18);

}

class Pessoa {

  String? nome;
  int? idade;

  Pessoa(this.nome, this.idade) : assert (nome == 'Guilherme', 'Nome Inválido');

}