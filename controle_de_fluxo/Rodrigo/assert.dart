void main() {
  Animal animal = Animal('Tótó', 19);
  // print('Digite o nome do gnomo: ');
  // String nome = stdin.readLineSync()!;
  String nome = 'Baixin';
  // print('Digite a altura do gnomo: ');
  // double altura = double.parse(stdin.readLineSync()!);
  double altura = 1;
  Gnomo gnominho = Gnomo(nome, altura);
}

class Gnomo {
  String nome;
  double altura;

  Gnomo(this.nome, this.altura)
      : assert(altura <= 1, 'Muito alto pra ser um gnomo');
}

class Animal {
  String name;
  int idade;

  Animal(this.name, this.idade) : assert(idade <= 20, 'Idade inválida');
}
