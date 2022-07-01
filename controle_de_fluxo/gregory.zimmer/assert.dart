void main() {
  Aluno aluno = Aluno('Gregory', 29, 9.5, 10, 8.75);
}

class Aluno {
  String nome;
  int idade;
  double nota1;
  double nota2;
  double nota3;

  Aluno(this.nome, this.idade, this.nota1, this.nota2, this.nota3)
      : assert(nota1 >= 0, 'Nota deve ser positiva'),
        assert(nota2 >= 0, 'Nota deve ser positiva'),
        assert(nota3 >= 0, 'Nota deve ser positiva');
}
