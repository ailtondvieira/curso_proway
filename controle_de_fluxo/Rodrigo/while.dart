import 'dart:io';

void main() {
  int count = 1;
  // verifica primeiro
  while (count <= 50) {
    print('Contando... $count');
    count++;
    if (count > 20) {
      continue;
    }
    print('Não é maior que 20');
  }
  count = 0;
  // verifica depois de entrar pelo menos uma vez
  do {
    print('Contando... $count');
    count++;
    if (count > 30) {
      print('Chegou em 30');
      break;
    }
  } while (count <= 50);

  print('------------');
  count = 0;
  print('Escreva alguma coisa');
  String nome = stdin.readLineSync() ?? 'RODRIGO';
  while (count < nome.length) {
    print(nome[count]);
    count++;
  }
  print('------------');
}
