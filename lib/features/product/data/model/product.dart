import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_test/core/enum/product_color.dart';
import 'package:code_test/core/enum/product_gender.dart';
import 'package:json_annotation/json_annotation.dart';

part "product.g.dart";

@JsonSerializable(explicitToJson: true)
class Product {
  @JsonKey(includeToJson: true)
  String? id;
  final String name;
  final String description;
  final List<String> images;
  final double price;
  final String brand;
  final num avgRating;
  final int totalReviews;
  final List<num> sizes;
  final List<ProductColor> colors;
  final Gender gender;
  DateTime? createdAt;
  final String thumbnail;

  Product(
      {required this.id,
      required this.name,
      required this.description,
      required this.images,
      required this.price,
      required this.brand,
      required this.avgRating,
      required this.totalReviews,
      required this.sizes,
      required this.colors,
      required this.thumbnail,
      required this.gender});

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);

  factory Product.fromFirestore(
      QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    final p = Product.fromJson(doc.data());
    p.id = doc.id;
    return p;
  }
}
