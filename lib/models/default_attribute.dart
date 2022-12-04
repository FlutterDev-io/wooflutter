import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class DefaultAttribute {
  int? id;
  String? name;
  String? option;
  DefaultAttribute({
    this.id,
    this.name,
    this.option,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'option': option,
    };
  }

  factory DefaultAttribute.fromMap(Map<String, dynamic> map) {
    return DefaultAttribute(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      option: map['option'] != null ? map['option'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory DefaultAttribute.fromJson(String source) =>
      DefaultAttribute.fromMap(json.decode(source) as Map<String, dynamic>);
}
