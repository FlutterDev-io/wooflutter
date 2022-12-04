// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:wooflutter/models/attribute.dart';
import 'package:wooflutter/models/category.dart';
import 'package:wooflutter/models/default_attribute.dart';
import 'package:wooflutter/models/dimension.dart';
import 'package:wooflutter/models/download.dart';
import 'package:wooflutter/models/image.dart';
import 'package:wooflutter/models/link.dart';
import 'package:wooflutter/models/meta_data.dart';
import 'package:wooflutter/models/tag.dart';

class Product {
  int? id;
  String? name;
  String? slug;
  String? permalink;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? type;
  String? status;
  bool? featured;
  String? catalogVisibility;
  String? description;
  String? shortDescription;
  String? sku;
  String? price;
  String? regularPrice;
  String? salePrice;
  String? dateOnSaleFrom;
  String? dateOnSaleFromGmt;
  String? dateOnSaleTo;
  String? dateOnSaleToGmt;
  String? priceHtml;
  bool? onSale;
  bool? purchasable;
  int? totalSales;
  bool? virtual;
  bool? downloadable;
  List<Download>? downloads;
  int? downloadLimit;
  int? downloadExpiry;
  String? externalUrl;
  String? buttonText;
  String? taxStatus;
  String? taxClass;
  bool? manageStock;
  int? stockQuantity;
  String? stockStatus;
  String? backorders;
  bool? backordersAllowed;
  bool? backordered;
  bool? soldIndividually;
  String? weight;
  Dimension? dimensions;
  bool? shippingRequired;
  bool? shippingTaxable;
  String? shippingClass;
  int? shippingClassId;
  bool? reviewsAllowed;
  String? averageRating;
  int? ratingCount;
  List<int>? relatedIds;
  List<int>? upsellIds;
  List<int>? crossSellIds;
  int? parentId;
  String? purchaseNote;
  List<Category>? categories;
  List<Tag>? tags;
  List<Image>? images;
  List<Attribute>? attributes;
  List<DefaultAttribute>? defaultAttributes;
  List<int>? variations;
  List<int>? groupedProducts;
  int? menuOrder;
  List<MetaData>? metaData;
  Link? lLinks;

  Product({
    this.id,
    this.name,
    this.slug,
    this.permalink,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.type,
    this.status,
    this.featured,
    this.catalogVisibility,
    this.description,
    this.shortDescription,
    this.sku,
    this.price,
    this.regularPrice,
    this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    this.priceHtml,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.virtual,
    this.downloadable,
    this.downloads,
    this.downloadLimit,
    this.downloadExpiry,
    this.externalUrl,
    this.buttonText,
    this.taxStatus,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.stockStatus,
    this.backorders,
    this.backordersAllowed,
    this.backordered,
    this.soldIndividually,
    this.weight,
    this.dimensions,
    this.shippingRequired,
    this.shippingTaxable,
    this.shippingClass,
    this.shippingClassId,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
    this.relatedIds,
    this.upsellIds,
    this.crossSellIds,
    this.parentId,
    this.purchaseNote,
    this.categories,
    this.tags,
    this.images,
    this.attributes,
    this.defaultAttributes,
    this.variations,
    this.groupedProducts,
    this.menuOrder,
    this.metaData,
    this.lLinks,
  });

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'id': id,
  //     'name': name,
  //     'slug': slug,
  //     'permalink': permalink,
  //     'dateCreated': dateCreated,
  //     'dateCreatedGmt': dateCreatedGmt,
  //     'dateModified': dateModified,
  //     'dateModifiedGmt': dateModifiedGmt,
  //     'type': type,
  //     'status': status,
  //     'featured': featured,
  //     'catalogVisibility': catalogVisibility,
  //     'description': description,
  //     'shortDescription': shortDescription,
  //     'sku': sku,
  //     'price': price,
  //     'regularPrice': regularPrice,
  //     'salePrice': salePrice,
  //     'dateOnSaleFrom': dateOnSaleFrom,
  //     'dateOnSaleFromGmt': dateOnSaleFromGmt,
  //     'dateOnSaleTo': dateOnSaleTo,
  //     'dateOnSaleToGmt': dateOnSaleToGmt,
  //     'priceHtml': priceHtml,
  //     'onSale': onSale,
  //     'purchasable': purchasable,
  //     'totalSales': totalSales,
  //     'virtual': virtual,
  //     'downloadable': downloadable,
  //     'downloads': downloads.map((x) => x?.toMap()).toList(),
  //     'downloadLimit': downloadLimit,
  //     'downloadExpiry': downloadExpiry,
  //     'externalUrl': externalUrl,
  //     'buttonText': buttonText,
  //     'taxStatus': taxStatus,
  //     'taxClass': taxClass,
  //     'manageStock': manageStock,
  //     'stockQuantity': stockQuantity,
  //     'stockStatus': stockStatus,
  //     'backorders': backorders,
  //     'backordersAllowed': backordersAllowed,
  //     'backordered': backordered,
  //     'soldIndividually': soldIndividually,
  //     'weight': weight,
  //     'dimensions': dimensions?.toMap(),
  //     'shippingRequired': shippingRequired,
  //     'shippingTaxable': shippingTaxable,
  //     'shippingClass': shippingClass,
  //     'shippingClassId': shippingClassId,
  //     'reviewsAllowed': reviewsAllowed,
  //     'averageRating': averageRating,
  //     'ratingCount': ratingCount,
  //     'relatedIds': relatedIds,
  //     'upsellIds': upsellIds,
  //     'crossSellIds': crossSellIds,
  //     'parentId': parentId,
  //     'purchaseNote': purchaseNote,
  //     'categories': categories.map((x) => x?.toMap()).toList(),
  //     'tags': tags.map((x) => x?.toMap()).toList(),
  //     'images': images.map((x) => x?.toMap()).toList(),
  //     'attributes': attributes.map((x) => x?.toMap()).toList(),
  //     'defaultAttributes': defaultAttributes.map((x) => x?.toMap()).toList(),
  //     'variations': variations,
  //     'groupedProducts': groupedProducts,
  //     'menuOrder': menuOrder,
  //     'metaData': metaData.map((x) => x?.toMap()).toList(),
  //     'lLinks': lLinks?.toMap(),
  //   };
  // }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      slug: map['slug'] != null ? map['slug'] as String : null,
      permalink: map['permalink'] != null ? map['permalink'] as String : null,
      dateCreated: map['date_created'] != null
          ? map['date_created'] as String
          : null, //TODO: convert in datetime
      dateCreatedGmt: map['date_created_gmt'] != null
          ? map['date_created_gmt'] as String
          : null, //TODO: convert in datetime
      dateModified: map['date_modified'] != null
          ? map['date_modified'] as String
          : null, //TODO: convert in datetime
      dateModifiedGmt: map['date_modified_gmt'] != null
          ? map['date_modified_gmt'] as String
          : null, //TODO: convert in datetime
      type: map['type'] != null ? map['type'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      featured: map['featured'] != null ? map['featured'] as bool : null,
      catalogVisibility: map['catalog_visibility'] != null
          ? map['catalog_visibility'] as String
          : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      shortDescription: map['short_description'] != null
          ? map['short_description'] as String
          : null,
      sku: (map['sku'] != null && map['sku'] != '')
          ? map['sku'] as String
          : null,
      price: map['price'] != null ? map['price'] as String : null,
      regularPrice:
          map['regular_price'] != null ? map['regular_price'] as String : null,
      salePrice: map['sale_price'] != null ? map['sale_price'] as String : null,
      dateOnSaleFrom: map['date_on_sale_from'] != null
          ? map['date_on_sale_from'] as String
          : null, //TODO: convert in datetime
      dateOnSaleFromGmt: map['date_on_sale_from_gmt'] != null
          ? map['date_on_sale_from_gmt'] as String
          : null, //TODO: convert in datetime
      dateOnSaleTo: map['date_on_sale_to'] != null
          ? map['date_on_sale_to'] as String
          : null, //TODO: convert in datetime
      dateOnSaleToGmt: map['date_on_sale_to_gmt'] != null
          ? map['date_on_sale_to_gmt'] as String
          : null, //TODO: convert in datetime
      priceHtml: map['price_html'] != null ? map['price_html'] as String : null,
      onSale: map['on_sale'] != null ? map['on_sale'] as bool : null,
      purchasable:
          map['purchasable'] != null ? map['purchasable'] as bool : null,
      totalSales: map['total_sales'] != null ? map['total_sales'] as int : null,
      virtual: map['virtual'] != null ? map['virtual'] as bool : null,
      downloadable:
          map['downloadable'] != null ? map['downloadable'] as bool : null,
      downloads: map['downloads'] != null
          ? List<Download>.from(
              (map['downloads'] as List<dynamic>).map<Download?>(
                (x) => Download.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      downloadLimit:
          map['download_limit'] != null ? map['download_limit'] as int : null,
      downloadExpiry:
          map['download_expiry'] != null ? map['download_expiry'] as int : null,
      externalUrl:
          map['external_url'] != null ? map['external_url'] as String : null,
      buttonText:
          map['button_text'] != null ? map['button_text'] as String : null,
      taxStatus: map['tax_status'] != null ? map['tax_status'] as String : null,
      taxClass: map['tax_class'] != null ? map['tax_class'] as String : null,
      manageStock:
          map['manage_stock'] != null ? map['manage_stock'] as bool : null,
      stockQuantity:
          map['stock_quantity'] != null ? map['stock_quantity'] as int : null,
      stockStatus:
          map['stock_status'] != null ? map['stock_status'] as String : null,
      backorders:
          map['backorders'] != null ? map['backorders'] as String : null,
      backordersAllowed: map['backorders_allowed'] != null
          ? map['backorders_allowed'] as bool
          : null,
      backordered:
          map['backordered'] != null ? map['backordered'] as bool : null,
      soldIndividually: map['sold_individually'] != null
          ? map['sold_individually'] as bool
          : null,
      weight: map['weight'] != null ? map['weight'] as String : null,
      dimensions: map['dimensions'] != null
          ? Dimension.fromMap(map['dimensions'] as Map<String, dynamic>)
          : null,
      shippingRequired: map['shipping_required'] != null
          ? map['shipping_required'] as bool
          : null,
      shippingTaxable: map['shipping_taxable'] != null
          ? map['shipping_taxable'] as bool
          : null,
      shippingClass: map['shipping_class'] != null
          ? map['shipping_class'] as String
          : null,
      shippingClassId: map['shipping_class_id'] != null
          ? map['shipping_class_id'] as int
          : null,
      reviewsAllowed: map['reviews_allowed'] != null
          ? map['reviews_allowed'] as bool
          : null,
      averageRating: map['average_rating'] != null
          ? map['average_rating'] as String
          : null,
      ratingCount:
          map['rating_count'] != null ? map['rating_count'] as int : null,
      relatedIds: map['related_ids'] != null
          ? List<int>.from((map['related_ids'] as List<dynamic>))
          : null,
      upsellIds: map['upsell_ids'] != null
          ? List<int>.from((map['upsell_ids'] as List<dynamic>))
          : null,
      crossSellIds: map['cross_sell_ids'] != null
          ? List<int>.from((map['cross_sell_ids'] as List<dynamic>))
          : null,
      parentId: map['parent_id'] != null ? map['parent_id'] as int : null,
      purchaseNote:
          map['purchase_note'] != null ? map['purchase_note'] as String : null,
      categories: map['categories'] != null
          ? List<Category>.from(
              (map['categories'] as List<dynamic>).map<Category?>(
                (x) => Category.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      tags: map['tags'] != null
          ? List<Tag>.from(
              (map['tags'] as List<dynamic>).map<Tag?>(
                (x) => Tag.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      images: map['images'] != null
          ? List<Image>.from(
              (map['images'] as List<dynamic>).map<Image?>(
                (x) => Image.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      attributes: map['attributes'] != null
          ? List<Attribute>.from(
              (map['attributes'] as List<dynamic>).map<Attribute?>(
                (x) => Attribute.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      defaultAttributes: map['default_attributes'] != null
          ? List<DefaultAttribute>.from(
              (map['default_attributes'] as List<dynamic>)
                  .map<DefaultAttribute?>(
                (x) => DefaultAttribute.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      variations: map['variations'] != null
          ? List<int>.from((map['variations'] as List<dynamic>))
          : null,
      groupedProducts: map['grouped_products'] != null
          ? List<int>.from((map['grouped_products'] as List<dynamic>))
          : null,
      menuOrder: map['menu_order'] != null ? map['menu_order'] as int : null,
      metaData: map['meta_data'] != null
          ? List<MetaData>.from(
              (map['meta_data'] as List<dynamic>).map<MetaData?>(
                (x) => MetaData.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      lLinks: map['_links'] != null
          ? Link.fromMap(map['_links'] as Map<String, dynamic>)
          : null,
    );
  }

  // String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Product(id: $id, name: $name, slug: $slug, permalink: $permalink, dateCreated: $dateCreated, dateCreatedGmt: $dateCreatedGmt, dateModified: $dateModified, dateModifiedGmt: $dateModifiedGmt, type: $type, status: $status, featured: $featured, catalogVisibility: $catalogVisibility, description: $description, shortDescription: $shortDescription, sku: $sku, price: $price, regularPrice: $regularPrice, salePrice: $salePrice, dateOnSaleFrom: $dateOnSaleFrom, dateOnSaleFromGmt: $dateOnSaleFromGmt, dateOnSaleTo: $dateOnSaleTo, dateOnSaleToGmt: $dateOnSaleToGmt, priceHtml: $priceHtml, onSale: $onSale, purchasable: $purchasable, totalSales: $totalSales, virtual: $virtual, downloadable: $downloadable, downloads: $downloads, downloadLimit: $downloadLimit, downloadExpiry: $downloadExpiry, externalUrl: $externalUrl, buttonText: $buttonText, taxStatus: $taxStatus, taxClass: $taxClass, manageStock: $manageStock, stockQuantity: $stockQuantity, stockStatus: $stockStatus, backorders: $backorders, backordersAllowed: $backordersAllowed, backordered: $backordered, soldIndividually: $soldIndividually, weight: $weight, dimensions: ${dimensions.toString()}, shippingRequired: $shippingRequired, shippingTaxable: $shippingTaxable, shippingClass: $shippingClass, shippingClassId: $shippingClassId, reviewsAllowed: $reviewsAllowed, averageRating: $averageRating, ratingCount: $ratingCount, relatedIds: $relatedIds, upsellIds: $upsellIds, crossSellIds: $crossSellIds, parentId: $parentId, purchaseNote: $purchaseNote, categories: $categories, tags: $tags, images: $images, attributes: $attributes, defaultAttributes: $defaultAttributes, variations: $variations, groupedProducts: $groupedProducts, menuOrder: $menuOrder, metaData: $metaData, lLinks: $lLinks)';
  }
}
