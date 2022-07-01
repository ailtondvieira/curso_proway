import 'dart:io';

void main() {
  
  // exercicio while
  print('Adivinhe o número escolhido de 1 a 20!');
  int number = int.parse(stdin.readLineSync()!);

  int luckyNumber = 14;
  int attempt = 3;

  while (number != luckyNumber && attempt > 0) {
    print('Ainda não... Tente novamente!');
    print('Você ainda tem $attempt tentativas.');
    int newNumber = int.parse(stdin.readLineSync()!);
    attempt--;

    if (newNumber == luckyNumber) {
      print('Você acertou!');
      break;
    } else if (attempt == 0) {
      print('Infelizmente, não foi dessa vez, o número escolhido era $luckyNumber');
    }
  }

  if (number == luckyNumber) {
    print('Você acertou!');
  }

  //exemplo while e do-while
  int contador = 1;

  while (contador <= 50) {
    print('Contando... $contador');
    contador++;
  }

  do {
    print('Contando... $contador');
    contador++;
  } while (contador <= 50);
}
