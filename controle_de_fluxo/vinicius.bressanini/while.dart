import 'dart:io';
void main() {
  String? word;

  while (word != "Stop") {

    print("Escreva qualquer coisa (Escreva Stop para parar)");
    word = stdin.readLineSync();
        
  }

  int cont = 0;

  do {

    print(cont);
    cont++;


  }while(cont < 15);

}