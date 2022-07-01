import 'dart:io';

void main() {
  var notas = [];
  double media = 0;

  print("Digite sua matricula: ");
  int matricula = int.parse(stdin.readLineSync().toString());

  if (matricula != 0) {
    for (int i = 0; i < 4; i++) {
      print("Digite uma nota: ");
      double nota1 = double.parse(stdin.readLineSync().toString());
      notas.add(nota1);
      media = notas[i] + media;
    }
    

    media = media / 4;

    if (media >= 7) {
      print("Você passou!!");
    } else {
      if (media <= 6 && media >= 4) {
        print("Você esta de recuperação");
      } else {
        print("Você está reprovado...");
      }
    }
  }
}