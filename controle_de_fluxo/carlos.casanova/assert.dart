void main() {
  Alunos aluno = Alunos('Ailton', 27);
}

class Alunos {
  String name;
  int idade;

  Alunos(this.name, this.idade) : assert(name == 'Carlos', 'nome inválido');
}
