// void main () {
//   String pais = "Brasil";
//   String moeda = "";

//   switch (pais) {
//     case "Argentina":
//       moeda = "Peso";
//       break;

//     case "Espanha":
//       moeda = "Euro";
//       break;

//     case "Brasil":
//       moeda = "Reais";
//       break;

//     default: 
//       moeda = "Desconhecida";
//   }
//   print("O país é $pais");
//   print("A moeda é $moeda");
// }

void main () {
  String fruta = "Abacaxi";
  double valor = 0;

  switch (fruta) {
    case "Banana":
      valor = 2.50;
      break;

    case "Morango":
      valor = 7.99;
      break;

    case "Abacaxi":
      valor = 3.50;
      break;

    default: 
      valor = 0;
  }
  print("O preço do $fruta é de $valor reais.");
}
