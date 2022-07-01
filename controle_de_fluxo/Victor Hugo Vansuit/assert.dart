/*
  Usado no modo debug, aparece apenas no debug
  condição com mensagem
*/

void main() {
  // String geek = "Teste";
  // assert(geek != "Teste");
  // print("You can see this line as an output");
}

class Product {
  Product({
    required this.id,
    required this.name,
    required this.price,
    this.size,
    this.image,
    this.weight,
  })  : assert(id > 0),
        assert(name.isNotEmpty),
        assert(price > 0.0);

  final int id;
  final String name;
  final double price;
  final String? size;
  final String? image;
  final int? weight;
}
