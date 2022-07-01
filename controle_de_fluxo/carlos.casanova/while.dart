void main() {
  int cont = 1;
  print('Os números pares entre 1 e 50 são:');
  while (cont <= 50) {
    mostraPares(cont);
    cont++;
  }
}

void mostraPares(cont) {
  if (cont % 2 == 0) {
    print(cont);
  }
}
