void main() {

  Pessoa p1 = Pessoa("", 10);

}

class Pessoa {

  String nome ;
  int idade;

  Pessoa (this.nome, this.idade) : assert(nome.isNotEmpty, "O nome não pode estar vazio");

}