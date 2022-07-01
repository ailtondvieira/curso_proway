void main() {
  int contador = 1;
  while (contador <= 50) {
    print('Contando... $contador');
    contador++;

    int tentativas = 0;
    bool aprendeu = false;
    while (tentativas < 300) {
      print('Tente novamente');
      tentativas++;
    }
    print('Aleluia!');
  }
}
