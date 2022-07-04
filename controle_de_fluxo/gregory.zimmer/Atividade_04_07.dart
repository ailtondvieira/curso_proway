import 'dart:io';

void main() {
  double? total;
  int codigo = 0;

  print('Informe um número: ');
  double numero1 = double.parse(stdin.readLineSync()!);
  print('Informe outro número: ');
  double numero2 = double.parse(stdin.readLineSync()!);

  while (codigo != 5) {
    print('''
----------MENU----------
  1 - SOMAR
  2 - SUBTRAIR
  3 - MULTIPLICAR
  4 - DIVIDIR
  5 - SAIR''');
    codigo = int.parse(stdin.readLineSync()!);

    if (codigo == 1) {
      total = numero1 + numero2;
    }
    if (codigo == 2) {
      total = numero1 - numero2;
    }
    if (codigo == 3) {
      total = numero1 * numero2;
    }
    if (codigo == 4) {
      total = numero1 / numero2;
    }

    switch (codigo) {
      case 1:
        print('$numero1 + $numero2 = $total');
        break;
      case 2:
        print('$numero1 - $numero2 = $total');
        break;
      case 3:
        print('$numero1 * $numero2 = $total');
        break;
      case 4:
        print('$numero1 / $numero2 = $total');
        break;
      case 5:
        break;
      default:
        print('O código escolhido não é válido.');
    }
  }
}
