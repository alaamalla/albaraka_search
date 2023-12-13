import 'dart:convert';

import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class modelserver {
  List<modelproducts> products;
  int total;
  int skip;
  int limit;
  modelserver({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'products': products.map((x) => x.toMap()).toList(),
      'total': total,
      'skip': skip,
      'limit': limit,
    };
  }

  factory modelserver.fromMap(Map<String, dynamic> map) {
    return modelserver(
      products: List<modelproducts>.from(
        (map['products'] as List<int>).map<modelproducts>(
          (x) => modelproducts.fromMap(x as Map<String, dynamic>),
        ),
      ),
      total: map['total'] as int,
      skip: map['skip'] as int,
      limit: map['limit'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory modelserver.fromJson(String source) =>
      modelserver.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'modelserver(products: $products, total: $total, skip: $skip, limit: $limit)';
  }

  modelserver copyWith({
    List<modelproducts>? products,
    int? total,
    int? skip,
    int? limit,
  }) {
    return modelserver(
      products: products ?? this.products,
      total: total ?? this.total,
      skip: skip ?? this.skip,
      limit: limit ?? this.limit,
    );
  }

  @override
  bool operator ==(covariant modelserver other) {
    if (identical(this, other)) return true;

    return listEquals(other.products, products) &&
        other.total == total &&
        other.skip == skip &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    return products.hashCode ^ total.hashCode ^ skip.hashCode ^ limit.hashCode;
  }
}

class modelproducts {
  int id;
  String title;
  String description;
  int price;
  String brand;
  modelproducts({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.brand,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'brand': brand,
    };
  }

  factory modelproducts.fromMap(Map<String, dynamic> map) {
    return modelproducts(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      price: map['price'] as int,
      brand: map['brand'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory modelproducts.fromJson(String source) =>
      modelproducts.fromMap(json.decode(source) as Map<String, dynamic>);

  modelproducts copyWith({
    int? id,
    String? title,
    String? description,
    int? price,
    String? brand,
  }) {
    return modelproducts(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      brand: brand ?? this.brand,
    );
  }

  @override
  String toString() {
    return 'modelproducts(id: $id, title: $title, description: $description, price: $price, brand: $brand)';
  }

  @override
  bool operator ==(covariant modelproducts other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.description == description &&
        other.price == price &&
        other.brand == brand;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        price.hashCode ^
        brand.hashCode;
  }
}
// / / / {
//   "products": [
//     {
//       "id": 1,
//       "title": "iPhone 9",
//       "description": "An apple mobile which is nothing like apple",
//       "price": 549,
//       "discountPercentage": 12.96,
//       "rating": 4.69,
//       "stock": 94,
//       "brand": "Apple",
//       "category": "smartphones",
//       "thumbnail": "...",
//       "images": ["...", "...", "..."]
//     },
//     {...},
//     {...},
//     {...}
//     // 30 items
//   ],

//   "total": 100,
//   "skip": 0,
//   "limit": 30
// }