// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Download {
  int? id;
  String? name;
  String? file;

  Download({
    this.id,
    this.name,
    this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'file': file,
    };
  }

  factory Download.fromMap(Map<String, dynamic> map) {
    return Download(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      file: map['file'] != null ? map['file'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Download.fromJson(String source) => Download.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );
}
