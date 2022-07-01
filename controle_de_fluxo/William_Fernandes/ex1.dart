import 'dart:math' as conta;

void main() {
  int num = 0;

  num = conta.Random().nextInt(100);

  if (num >= 10) {
    print("Número é maior que 10, legal");
  } else {
    print("Não é maior que 10, que pena...");
  }
}
