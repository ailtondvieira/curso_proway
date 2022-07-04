import 'dart:io';

void main() {
  print("Valor de custo ");
  double custo = double.parse(stdin.readLineSync()!);

  print("Taxa de imposto % ");
  double imposto = double.parse(stdin.readLineSync()!);

  print("Taxa de RT % ");
  double rt = double.parse(stdin.readLineSync()!);

  String? name = stdin.readLineSync();

  // Printing the name
  print("Hello, $name! \nWelcome to GeeksforGeeks!!");
}
