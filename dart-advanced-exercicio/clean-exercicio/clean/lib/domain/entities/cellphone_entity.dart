class CellPhoneEntity {
  double price;
  int qtd;
  String brand;
  int id;

 CellPhoneEntity({
    required this.id,
    required this.price,
    required this.qtd,
    required this.brand,
  });

  @override
  String toString() {
    return 'CellPhoneEntity(price: $price, qtd: $qtd, brand: $brand, id: $id)';
  }
}
