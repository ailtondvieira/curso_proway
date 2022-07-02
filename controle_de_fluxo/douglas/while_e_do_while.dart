void main() {
  int tentativas = 0;
  while (tentativas < 3) {
    print('Tente novamente');
    tentativas++;
  }
  print('Aleluia!');
  print('');

  int tentativas2 = 0;
  do {
    print('Tente novamente');
    tentativas2++;
  } while (tentativas2 < 3);
  print('Aleluiaaa!');
}
