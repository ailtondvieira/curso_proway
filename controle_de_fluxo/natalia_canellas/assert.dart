void main() {
  Animal animalzin = Animal('Zozo', 4);
  Fruta fruta = Fruta('abacaxi', 70);
}

class Animal {
  String name;
  int idade;

  Animal(this.name, this.idade) : assert(name != 'Leo', 'Nome inválido');
}

class Fruta {
  String name;
  int quantity;

  Fruta(this.name, this.quantity)
      : assert(quantity <= 50, 'Quantidade inválida');
}

//O assert só funciona no modo Debug, é apenas usado no desenvolvimento.
//A mensagem aparece como erro quando desenvolvemos uma aplicação, no emulador.
//o assert tem uma condição e uma mensagem de erro. 
//Serve para evitar que outros coloquem algo inválido na sua classe. 