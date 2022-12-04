// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:wooflutter/models/self.dart';

import 'collection.dart';

class Link {
  List<WooSelf>? self;
  List<WooCollection>? collection;
  Link({
    this.self,
    this.collection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'self': self?.map((x) => x.toMap()).toList(),
      'collection': collection?.map((x) => x.toMap()).toList(),
    };
  }

  factory Link.fromMap(Map<String, dynamic> map) {
    return Link(
      self: map['self'] != null
          ? List<WooSelf>.from(
              (map['self'] as List<dynamic>).map<WooSelf?>(
                (x) => WooSelf.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      collection: map['collection'] != null
          ? List<WooCollection>.from(
              (map['collection'] as List<dynamic>).map<WooCollection?>(
                (x) => WooCollection.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Link.fromJson(String source) =>
      Link.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Link(self: $self, collection: $collection)';
}
