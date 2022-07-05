import 'dart:io';

void main() {
  bool vivo = true;
  Duration dez = Duration(hours: 0, minutes: 0, seconds: 1);
  while (vivo) {
    print("entrei no while");
    sleep(dez);
    print("Saí do sleep.");
    vivo = false; // morro
  }
  do {
    print("entrei no while");
    sleep(dez);
    print("Saí do sleep.");
    vivo = false; // morro
  } while (vivo);

  int cont = 2;
  while (cont < double.infinity) {
    print(cont);
    cont *= 1000;
  }
}
