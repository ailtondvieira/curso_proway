import 'dart:convert';

class FactModel {
  String factId;
  String fact;

  FactModel({
    required this.factId,
    required this.fact,
  });

  factory FactModel.fromMap(Map<String, dynamic> map) {
    return FactModel(
      factId: map['fact_id'].toString(),
      fact: map['fact'] ?? '',
    );
  }

  @override
  String toString() => 'FactModel(factId: $factId, fact: $fact)';

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'fact_id': factId});
    result.addAll({'fact': fact});

    return result;
  }

  String toJson() => json.encode(toMap());

  factory FactModel.fromJson(String source) =>
      FactModel.fromMap(json.decode(source));
}
