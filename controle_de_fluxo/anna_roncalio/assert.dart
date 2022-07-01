void main() {
  
  // exercicio assert
  ClassDate prowayClass = ClassDate('27/06/2022', '06/09/2022', 8);

  // exemplo professor
  Animal animal = Animal('Totó', 15);
}

class Animal {
  String name;
  int age;

  Animal(this.name, this.age) : assert(age <= 20, 'Idade inválida'); // Só funciona no Debug
}

// exercicio assert
class ClassDate {
  String initialDate;
  String finalDate;
  double finalMedia;

  ClassDate(this.initialDate, this.finalDate, this.finalMedia) : assert(finalMedia >= 7, 'Média insuficiente');
}