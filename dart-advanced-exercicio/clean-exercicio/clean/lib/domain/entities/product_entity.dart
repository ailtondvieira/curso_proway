class ProductEntity {
  String name;
  double price;
  int qtd;
  String brand;
  String category;
  int id;

  ProductEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.qtd,
    required this.brand,
    required this.category,
  });

  bool verifyAvailability() {
    if (qtd > 0) {
      return true;
    } else {
      return false;
    }
  }

  bool verifyPriceValid() {
    if (price > 0) {
      return true;
    } else {
      return false;
    }
  }

  bool verifyNameValid() {
    if (name.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  bool verifyCategoryValid() {
    if (category.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  bool verifyBrandValid() {
    if (brand.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  @override
  String toString() {
    return 'ProductEntity(name: $name, price: $price, qtd: $qtd, brand: $brand, category: $category, id: $id)';
  }
}
