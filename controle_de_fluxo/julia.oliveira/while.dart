void main() {
  int contador = 1;
  while (contador <= 50) {
    print('Contando...$contador');
    contador++;
  }

  int pessoasNaFila = 10;
  int posicaoAtual = 10;

  while (pessoasNaFila >= 0) {
    if (posicaoAtual == 0) {
      print('Agora é sua vez');
      break;
    } else {
      posicaoAtual--;
      print('Sua posição na fila é $posicaoAtual');
      pessoasNaFila--;
  
    }
  }

  int contado = 0;
  do{
    print('Contando...$contado');
    contado++;
  } while (contado < 50);
}
