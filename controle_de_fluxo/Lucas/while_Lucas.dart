import 'dart:io';
void main() {
  
  int numeroAux = 0;
  int contador = 0;
  int contadorDo = 0;
  print("Informe um número que será somado aleatórias vezes, até passar de 1000:");
  String? leitor = stdin.readLineSync();
  int numero = int.parse(leitor!);

  while (numeroAux <= 1000) {
    numeroAux += numero;
    contador++;
  }
  print("O número parou em $numeroAux. Sendo somado $contador vezes");

  do {
    print("Contando... $contadorDo");
    contadorDo++;
  } while (contadorDo <= 50);
}

