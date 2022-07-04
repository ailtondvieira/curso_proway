void main() {
  int contador = 0;

  while (contador <= 50) {
    print('Contando ... $contador');
    {
      break;
    }

    contador++;
  }

  contador = 0;

  while (contador <= 50) {
    print('Contando ... $contador');

    if (contador == 20) {
      continue;
    }

    contador++;
  }
}
