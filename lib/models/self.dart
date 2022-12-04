// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class WooSelf {
  String? href;
  WooSelf({
    this.href,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'href': href,
    };
  }

  factory WooSelf.fromMap(Map<String, dynamic> map) {
    return WooSelf(
      href: map['href'] != null ? map['href'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory WooSelf.fromJson(String source) =>
      WooSelf.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'WooSelf(href: $href)';
}
