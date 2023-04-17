import 'package:json_annotation/json_annotation.dart';
import 'category.dart';

part 'product.g.dart';

@JsonSerializable(explicitToJson: true)
class Product {
  final int id;
  final String name;
  final String slug;
  final String permalink;
  final DateTime dateCreated;
  final DateTime dateCreatedGmt;
  final DateTime dateModified;
  final DateTime dateModifiedGmt;
  final String type;
  final String status;
  final bool featured;
  final String catalogVisibility;
  final String description;
  final String shortDescription;
  final String sku;
  final String price;
  final String regularPrice;
  final String salePrice;
  final DateTime? dateOnSaleFrom;
  final DateTime? dateOnSaleFromGmt;
  final DateTime? dateOnSaleTo;
  final DateTime? dateOnSaleToGmt;
  final String priceHtml;
  final bool onSale;
  final bool purchasable;
  final int totalSales;
  final bool virtual;
  final bool downloadable;
  final List<Category> categories;

  Product({
    required this.id,
    this.name = '',
    this.slug = '',
    this.permalink = '',
    required this.dateCreated,
    required this.dateCreatedGmt,
    required this.dateModified,
    required this.dateModifiedGmt,
    required this.type,
    required this.status,
    required this.featured,
    required this.catalogVisibility,
    this.description = '',
    this.shortDescription = '',
    this.sku = '',
    this.price = '',
    this.regularPrice = '',
    this.salePrice = '',
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    this.priceHtml = '',
    this.onSale = false,
    this.purchasable = false,
    this.totalSales = 10,
    this.virtual = false,
    this.downloadable = true,
    this.categories = const [],
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
