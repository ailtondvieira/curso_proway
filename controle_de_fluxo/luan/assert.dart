void main() {
  Pessoa pessoa = Pessoa('Luan', 130);
}

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade) : assert(idade <= 120, 'Idade inválida');
}
