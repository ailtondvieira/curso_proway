void main(){
  Animal avestruz = Animal('Maria', 100);

  avestruz.imprimir();
}

class Animal {
  String name;
  int idade;

  Animal(this.name, this.idade) : assert(idade < 20, 'Idade inválida');

  void imprimir (){
    print('Nome: $name Idade: $idade');
  }
}