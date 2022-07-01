void main() {
  String marca = "Nissan";
  String carro = '';

  switch (marca) {
    case "Fiat":
      carro = "Uno";
      break;

    case "Nissan":
      carro = "GTR";
      break;

    case "Toyota":
      carro = "Silvia";
      break;

    default:
      carro = "Carroça";
  }

  print('O carro é o $carro');
  print('A marca do carro é $marca');
}
