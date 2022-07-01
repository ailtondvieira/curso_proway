import 'dart:math';

void main() {
  bool digital = true;
  int chanceDeFuncionar = 10;

  while (digital) {
    if (Random().nextInt(11) == chanceDeFuncionar) {
      print("Você conseguiu entrar!");
      digital = false;
    } else {
      print("Sua digital falhou...");
    }
  }
  
}
