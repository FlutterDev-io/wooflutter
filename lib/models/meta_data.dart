import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class MetaData {
  int? id;
  String? key;
  String? value;
  MetaData({
    this.id,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'key': key,
      'value': value,
    };
  }

  factory MetaData.fromMap(Map<String, dynamic> map) {
    return MetaData(
      id: map['id'] != null ? map['id'] as int : null,
      key: map['key'] != null ? map['key'] as String : null,
      value: map['value'] != null ? map['value'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MetaData.fromJson(String source) =>
      MetaData.fromMap(json.decode(source) as Map<String, dynamic>);
}
