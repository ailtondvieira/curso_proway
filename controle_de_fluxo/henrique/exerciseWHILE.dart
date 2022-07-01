import 'dart:math';
import 'dart:io';
void main() {
  print('''
Oh não o elevador tem muita gente e não irá descer!
Você precisa fazer o papel do executor e tirar pessoas do elevador.
Mas cuidado, se tirar pessoas demais o elevador ficará muito leve e subirá!''');
  int pessoas = Random().nextInt(35) + 20;
  int noElevador = 10;
  while (pessoas > noElevador) {
    print('Quantas pessoas você quer retirar?');
    pessoas -= int.parse(stdin.readLineSync()!);
    if(pessoas < (noElevador / 2)) {
      print('Você enviou muitas pessoas para fora do elevador e ele começou a flutuar! Te deixando mais longe da saída.');
      exit(0);
    }
  }
  print('Você conseguiu balancear a quantidade de pessoas no elevador e descer, só cuidado pra que ele não caia.');
}
