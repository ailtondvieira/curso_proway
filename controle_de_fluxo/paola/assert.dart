//assert é condição, utilizada no desenvolvimento.

// void main() {
//   Animal animal = Animal ("Totó",10);
// }

// class Animal {
//   String name;
//   int idade;

//   Animal(this.name, this.idade) : assert(name == "Totó", "Idade inválida");
// }

void main() {
  Classificador classificador = Classificador ("Passou",9.5);
}

class Classificador {
  String aprova;
  double nota;

  Classificador(this.aprova, this.nota) : assert(aprova == "Passou", "Parabéns");
}