void main() {
  Animal animal = Animal();
  animal..nome = 'Sonic';
  animal..idade = 2;
  animal.correr();
  animal.gritar();

  Animal animal2 = Animal();
  animal2
    ..nome = 'Fred'
    ..idade = 2
    ..correr()
    ..gritar();
}

class Animal {
  String? nome;
  int? idade;

  void gritar() {
    print('gritando');
  }

  void correr() {
    print('correndo');
  }
}
