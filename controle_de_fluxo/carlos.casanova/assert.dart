void main() {
  Alunos aluno = Alunos('Carlos', 27);
}

class Alunos {
  String name;
  int idade;

  Alunos(this.name, this.idade)
      : assert(name == 'Carlos', 'nome inválido'),
        assert(idade == 25, 'idade inválida');
}
