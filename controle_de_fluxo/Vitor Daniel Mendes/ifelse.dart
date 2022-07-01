import 'dart:math';

void main() {
  int temperatura;
  // var rng = Random();

  temperatura = Random().nextInt(65);

  if (temperatura <= 18) {
    print('Friaca!!, Colocando o casaco');
  } else if (temperatura < 35) {
    print('calor');
  }
}
