import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_test/core/enum/product_color.dart';
import 'package:code_test/features/product/data/model/product.dart';
import 'package:json_annotation/json_annotation.dart';

part "cart_item.g.dart";

@JsonSerializable()
class CartItem {
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? id;
  final Product product;
  final num? size;
  final ProductColor? productColor;
  final String userId;
  final int quantity;
  CartItem(
      {required this.product,
      required this.userId,
      required this.quantity,
      required this.productColor,
      required this.size});

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
  factory CartItem.fromFirestore(
      QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    final c = CartItem.fromJson(doc.data());
    c.id = doc.id;
    return c;
  }

  Map<String, dynamic> toJson() => _$CartItemToJson(this);
}
