import 'dart:io';
void main() {

  bool semaforoAberto = false;

  print("O semáforo está aberto? (Sim ou Não)");
  String? semaforo = stdin.readLineSync();

  if (semaforo == "Sim") {
    semaforoAberto = true;
  }
    

  if (semaforoAberto) {
    print("Siga em frente...");
  } else {
    print("Pare..");
  }
}