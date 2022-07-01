import "dart:io";
void main() {
  String? raca;
  String porte = "";

  print("Informe uma das 3 raças conhecidas para verificar o seu porte: (Labrador, Vira-Lata, Yorkshire)");
  raca = stdin.readLineSync();

  switch (raca) {
    case "Labrador":
     porte = "Grande";
      break;
    case "Vira-Lata":
     porte = "Médio";
      break;
    case "Yorkshire":
     porte = "Pequeno";
      break;
    default:
     porte = "Desconhecido";
  }
  print("A raça é $raca");
  print("O porte é $porte");
}