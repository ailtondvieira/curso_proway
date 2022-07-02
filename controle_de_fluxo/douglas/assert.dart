void main() {
  Animal dog = Animal('Soniç', 2);
  print('My dog ${dog.name} have ${dog.age} year');
}

class Animal {
  String? name;
  int? age;

  Animal(this.name, this.age) : assert(name == 'Soniç', 'Nome errado');
}
