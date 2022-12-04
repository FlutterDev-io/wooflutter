import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class WooCollection {
  String? href;
  WooCollection({
    this.href,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'href': href,
    };
  }

  factory WooCollection.fromMap(Map<String, dynamic> map) {
    return WooCollection(
      href: map['href'] != null ? map['href'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory WooCollection.fromJson(String source) =>
      WooCollection.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'WooCollection(href: $href)';
}
