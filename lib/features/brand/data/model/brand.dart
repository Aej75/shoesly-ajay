import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'brand.g.dart';

@JsonSerializable()
class Brand {
  String? id;
  final String name;
  final String logo;
  final int totalProducts;
  Brand(
      {this.id,
      required this.name,
      required this.logo,
      required this.totalProducts});

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
  Map<String, dynamic> toJson() => _$BrandToJson(this);
  factory Brand.fromFirestore(QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    final brand = Brand.fromJson(doc.data());
    brand.id = doc.id;
    return brand;
  }
}
