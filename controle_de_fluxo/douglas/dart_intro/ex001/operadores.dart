import 'dart:math' as apelido;

void main() {
  //lógicos
  print('Lógicos');
  dynamic nota1 = 20.0;
  double nota2 = 3;
  double nota3 = 5;
  double nota4 = -10;
  print(nota1 + nota2);
  print(nota1 - nota2);
  print(nota1 * nota2);
  print(nota1 / nota2);
  print(nota1 ~/ nota2);
  print(nota1 % nota2);
  nota3 = -nota3; //inverte o sinal da nota4
  print(nota3);
  print("");

  print('Atribuição');
  print(nota1 = nota2);
  print(nota1 += nota2);
  print(nota1 -= nota2);
  print(nota1 *= nota2);
  print(nota1 /= nota2);
  print(nota1 ~/= nota1); //nota1 precisar ser dynamic
  print('');

  print('Type test');

  nota3 = (nota2 ~/ 2).toDouble(); //converte
  print(nota1);
  apelido.Random().nextInt(2); //usado um apelido no import da classe

  if (nota1 is String) {
    print('Verdadeiro'); //retorna um boolean
  } else {
    print('Falso');
  }
  print(nota1 is! String);
}
