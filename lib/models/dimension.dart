// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Dimension {
  String? length;
  String? width;
  String? height;

  Dimension({this.length, this.width, this.height});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'length': length,
      'width': width,
      'height': height,
    };
  }

  factory Dimension.fromMap(Map<String, dynamic> map) {
    return Dimension(
      length: map['length'] != null ? map['length'] as String : null,
      width: map['width'] != null ? map['width'] as String : null,
      height: map['height'] != null ? map['height'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Dimension.fromJson(String source) =>
      Dimension.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Dimension(length: $length, width: $width, height: $height)';
}
