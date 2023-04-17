// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int,
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      permalink: json['permalink'] as String? ?? '',
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dateCreatedGmt: DateTime.parse(json['dateCreatedGmt'] as String),
      dateModified: DateTime.parse(json['dateModified'] as String),
      dateModifiedGmt: DateTime.parse(json['dateModifiedGmt'] as String),
      type: json['type'] as String,
      status: json['status'] as String,
      featured: json['featured'] as bool,
      catalogVisibility: json['catalogVisibility'] as String,
      description: json['description'] as String? ?? '',
      shortDescription: json['shortDescription'] as String? ?? '',
      sku: json['sku'] as String? ?? '',
      price: json['price'] as String? ?? '',
      regularPrice: json['regularPrice'] as String? ?? '',
      salePrice: json['salePrice'] as String? ?? '',
      dateOnSaleFrom: json['dateOnSaleFrom'] == null
          ? null
          : DateTime.parse(json['dateOnSaleFrom'] as String),
      dateOnSaleFromGmt: json['dateOnSaleFromGmt'] == null
          ? null
          : DateTime.parse(json['dateOnSaleFromGmt'] as String),
      dateOnSaleTo: json['dateOnSaleTo'] == null
          ? null
          : DateTime.parse(json['dateOnSaleTo'] as String),
      dateOnSaleToGmt: json['dateOnSaleToGmt'] == null
          ? null
          : DateTime.parse(json['dateOnSaleToGmt'] as String),
      priceHtml: json['priceHtml'] as String? ?? '',
      onSale: json['onSale'] as bool? ?? false,
      purchasable: json['purchasable'] as bool? ?? false,
      totalSales: json['totalSales'] as int? ?? 10,
      virtual: json['virtual'] as bool? ?? false,
      downloadable: json['downloadable'] as bool? ?? true,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'permalink': instance.permalink,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dateCreatedGmt': instance.dateCreatedGmt.toIso8601String(),
      'dateModified': instance.dateModified.toIso8601String(),
      'dateModifiedGmt': instance.dateModifiedGmt.toIso8601String(),
      'type': instance.type,
      'status': instance.status,
      'featured': instance.featured,
      'catalogVisibility': instance.catalogVisibility,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'sku': instance.sku,
      'price': instance.price,
      'regularPrice': instance.regularPrice,
      'salePrice': instance.salePrice,
      'dateOnSaleFrom': instance.dateOnSaleFrom?.toIso8601String(),
      'dateOnSaleFromGmt': instance.dateOnSaleFromGmt?.toIso8601String(),
      'dateOnSaleTo': instance.dateOnSaleTo?.toIso8601String(),
      'dateOnSaleToGmt': instance.dateOnSaleToGmt?.toIso8601String(),
      'priceHtml': instance.priceHtml,
      'onSale': instance.onSale,
      'purchasable': instance.purchasable,
      'totalSales': instance.totalSales,
      'virtual': instance.virtual,
      'downloadable': instance.downloadable,
      'categories': instance.categories.map((e) => e.toJson()).toList(),
    };
