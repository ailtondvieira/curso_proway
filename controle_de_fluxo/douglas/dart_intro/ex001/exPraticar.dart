//#Crie um algoritmo que tenha um map e dentro desse map um dos itens é uma
//lista tipada com alguns itens dentro dela.
//Depois imprima os valores desse map pelo key que tem a lista

void main() {
  List<String> modelosChevrolet = [
    'S10',
  ];
  Map<int, dynamic> carros = {1: modelosChevrolet, 2: 'teste'};
  carros.addAll({3: 'volkswagen'});
  print(carros[3]);
}
