import 'dart:convert';

import '../../domain/entities/product_entity.dart';

class ProductsDto extends ProductEntity {
  String nameDTO;
  double priceDTO;
  int qtdDTO;
  String brandDTO;
  String categoryDTO;
  int idDTO;

  ProductsDto({
    required this.idDTO,
    required this.nameDTO,
    required this.priceDTO,
    required this.qtdDTO,
    required this.brandDTO,
    required this.categoryDTO,
  }) : super(
    id: idDTO,
          brand: brandDTO,
          name: nameDTO,
          price: priceDTO,
          qtd: qtdDTO,
          category: categoryDTO,
        );
        

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'nameDTO': nameDTO});
    result.addAll({'priceDTO': priceDTO});
    result.addAll({'qtdDTO': qtdDTO});
    result.addAll({'brandDTO': brandDTO});
    result.addAll({'categoryDTO': categoryDTO});
    result.addAll({'idDTO': idDTO});
  
    return result;
  }

  factory ProductsDto.fromMap(Map<String, dynamic> map) {
    return ProductsDto(
      idDTO: map['idDTO'] ?? '',
      nameDTO: map['nameDTO'] ?? '',
      priceDTO: map['priceDTO']?.toDouble() ?? 0.0,
      qtdDTO: map['qtdDTO']?.toInt() ?? 0,
      brandDTO: map['brandDTO'] ?? '',
      categoryDTO: map['categoryDTO'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductsDto.fromJson(String source) => ProductsDto.fromMap(json.decode(source));


  @override
  String toString() {
    return 'ProductsDto(nameDTO: $nameDTO, priceDTO: $priceDTO, qtdDTO: $qtdDTO, brandDTO: $brandDTO, categoryDTO: $categoryDTO)';
  }
}
