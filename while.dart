//While - Controle de repetição

void main () {
  int i = 10;

 //verifica primeiro e depois executa
  while (i <= 12) {
    print(i);
    i++;
  }

//executa primeiro e depois verifica
  do {
    print(i);
    i++;
  } while (i <= 12);

  // int numero = 5;
  // int fator = 1;

  // while ( numero >= 1) {
  //   fator = fator * numero;
  //   numero ++;
  //   print("O valor é ${fator}");
  // }

  // while (true) {
  //   print("Funciona!"); 
  // }
  
}