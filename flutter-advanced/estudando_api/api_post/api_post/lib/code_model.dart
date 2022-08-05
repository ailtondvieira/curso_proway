import 'dart:convert';

class CodeModel {
  final String data;
  final String key;
  CodeModel({
    required this.data,
    required this.key,
  });

  CodeModel copyWith({
    String? data,
    String? key,
  }) {
    return CodeModel(
      data: data ?? this.data,
      key: key ?? this.key,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'data': data});
    result.addAll({'key': key});

    return result;
  }

  factory CodeModel.fromMap(Map<String, dynamic> map) {
    return CodeModel(
      data: map['data'] ?? '',
      key: map['key'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CodeModel.fromJson(String source) =>
      CodeModel.fromMap(json.decode(source));

  @override
  String toString() => 'CodeModel(data: $data, key: $key)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CodeModel && other.data == data && other.key == key;
  }

  @override
  int get hashCode => data.hashCode ^ key.hashCode;
}
