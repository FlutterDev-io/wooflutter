// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Image {
  int? id;
  String? dateCreated; //TODO: convert to DateTime
  String? dateCreatedGmt; //TODO: convert to DateTime
  String? dateModified; //TODO: convert to DateTime
  String? dateModifiedGmt; //TODO: convert to DateTime
  String? src;
  String? name;
  String? alt;

  Image({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.src,
    this.name,
    this.alt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'dateCreated': dateCreated,
      'dateCreatedGmt': dateCreatedGmt,
      'dateModified': dateModified,
      'dateModifiedGmt': dateModifiedGmt,
      'src': src,
      'name': name,
      'alt': alt,
    };
  }

  factory Image.fromMap(Map<String, dynamic> map) {
    return Image(
      id: map['id'] != null ? map['id'] as int : null,
      dateCreated:
          map['date_created'] != null ? map['date_created'] as String : null,
      dateCreatedGmt: map['date_created_gmt'] != null
          ? map['date_created_gmt'] as String
          : null,
      dateModified:
          map['date_modified'] != null ? map['date_modified'] as String : null,
      dateModifiedGmt: map['date_modified_gmt'] != null
          ? map['date_modified_gmt'] as String
          : null,
      src: map['src'] != null ? map['src'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      alt: map['alt'] != null ? map['alt'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Image.fromJson(String source) =>
      Image.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Image(id: $id, dateCreated: $dateCreated, dateCreatedGmt: $dateCreatedGmt, dateModified: $dateModified, dateModifiedGmt: $dateModifiedGmt, src: $src, name: $name, alt: $alt)';
  }
}
