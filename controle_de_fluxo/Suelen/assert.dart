void main(){
  
 // Animal animal = Animal('Totó', 20);
 Carro carro = Carro('Civic','Honda');

}

// class Animal {
//   String name;
//   int idade;

//     Animal(this.name, this.idade) : assert(idade == 'Totó', 'Idade inválida'); // o assert só funciona em modo debug
    
// }


class Carro{
  String modelo;
  String marca;

  Carro(this.modelo, this.marca) : assert (marca != 'Honda', 'Marca Incorreta');
}