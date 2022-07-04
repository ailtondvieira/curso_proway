import 'dart:io';

void main() {
  String? input;
  int idade = 0;
  String mensagem;

  do {
    print('Infome sua idade');
    input = stdin.readLineSync();
    idade = int.parse(input!);
    if (idade < 18) {
      print('access denied');
    } else {
      if (idade < 35) {
        mensagem = "Jovem";
      } else if (idade < 55) {
        mensagem = "Meia idade";
      } else {
        mensagem = "Idoso";
      }
      switch (mensagem) {
        case ("Jovem"):
          print('Vc é novinho pra caramba!');
          break;
        case ("Meia idade"):
          print('Vc é bem experiente!');
          break;
        case ("Idoso"):
          print('Vc manja muito dos paranaue!');
          break;
        default:
      }
    }
  } while (idade < 18);
}
