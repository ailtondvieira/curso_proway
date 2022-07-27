import 'dart:convert';

import '../../domain/entities/cellphone_entity.dart';

class CellphoneDto extends CellPhoneEntity {
  double priceDTO;
  int qtdDTO;
  String brandDTO;
  int idDTO;

  CellphoneDto({
    required this.idDTO,
    required this.priceDTO,
    required this.qtdDTO,
    required this.brandDTO,
  }) : super(
          id: idDTO,
          price: priceDTO,
          qtd: qtdDTO,
          brand: brandDTO,
        );

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'priceDTO': priceDTO});
    result.addAll({'qtdDTO': qtdDTO});
    result.addAll({'brandDTO': brandDTO});
    result.addAll({'idDTO': idDTO});
  
    return result;
  }

  factory CellphoneDto.fromMap(Map<String, dynamic> map) {
    return CellphoneDto(
      priceDTO: map['priceDTO']?.toDouble() ?? 0.0,
      qtdDTO: map['qtdDTO']?.toInt() ?? 0,
      brandDTO: map['brandDTO'] ?? '',
      idDTO: map['idDTO']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CellphoneDto.fromJson(String source) => CellphoneDto.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CellphoneDto(priceDTO: $priceDTO, qtdDTO: $qtdDTO, brandDTO: $brandDTO, idDTO: $idDTO)';
  }
}
