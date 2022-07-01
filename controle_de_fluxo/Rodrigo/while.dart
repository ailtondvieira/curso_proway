import 'dart:io';

void main() {
  int count = 1;
  // verifica primeiro
  while (count <= 50) {
    print('Contando... $count');
    count++;
  }
  count = 0;
  // verifica depois de entrar pelo menos uma vez
  do {
    print('Contando... $count');
    count++;
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
