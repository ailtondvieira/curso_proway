import "dart:math";

void main() {
  String pais = "Brasil";
  String moeda = "";

  switch (pais) {
    case "Argentina":
      moeda = "Peso Argentino";
      break;
    case "Espanha":
      moeda = "Euro";
      break;
    case "Brasil":
      moeda = "Real";
      break;
    default:
      moeda = "desconhecida";
  }
  print(moeda);

  int x = Random().nextInt(5);
  String? corDaSorte;

  switch (x) {
    case 2:
      corDaSorte = "Azul";
      break;
    case 3:
      corDaSorte = "Verde";
      break;
    case 4:
      corDaSorte = "Vermelha";
      break;
    case 5:
      corDaSorte = "Preta";
      break;
    case 6:
      corDaSorte = "Branca";
      break;
    default:
      corDaSorte = "Amarelo";
      break;
  }
  print(corDaSorte);
}
