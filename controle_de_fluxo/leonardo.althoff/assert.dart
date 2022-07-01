void main() {
  Animal animal = Animal("Totó", 20);
  print(animal.toString());

  carSpeed speed = carSpeed("Corolla", 110);
}

class Animal {
  String nome;
  int idade;

  Animal(this.nome, this.idade) : assert(nome != "Totó", "Não pode esse nome");
}

class carSpeed {
  String car;
  int speed;

  carSpeed(this.car, this.speed)
      : assert(speed <= 100, "Você está rápido demais!");
}
