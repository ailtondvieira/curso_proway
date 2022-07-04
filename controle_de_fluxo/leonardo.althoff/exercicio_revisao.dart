import 'dart:io';

void main() {
  bool horarioExpediente = true;
  int products = 5;
  List<String> listProducts = [];

  if (horarioExpediente == true) {
    for (int i = 0; i < products; i++) {
      print("Digite o nome do produto");
      listProducts.add(stdin.readLineSync()!);
    }
  } else {
    print("Você não deve trablhar fora do horário!");
  }

  print("Digite qual o número do produto que deseja consultar");
  int number = int.parse(stdin.readLineSync()!);

  switch (number) {
    case 1:
      print(listProducts[1]);
      break;
    case 2:
      print(listProducts[2]);
      break;
    case 3:
      print(listProducts[3]);
      break;
    case 4:
      print(listProducts[4]);
      break;
    case 5:
      print(listProducts[5]);
      break;
    default:
      print("Esse produto não existe");
  }
}
