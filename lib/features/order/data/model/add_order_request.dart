import 'package:code_test/features/cart/data/model/cart_item.dart';
import 'package:json_annotation/json_annotation.dart';

part "add_order_request.g.dart";

///all supported payment method
enum PaymentMethod { cash, online }

@JsonSerializable(explicitToJson: true)
class AddOrderRequest {
  final List<CartItem> items;
  final double subTotal;
  final double shippingFee;
  final double total;
  final PaymentMethod paymentMethod;
  final ShippingAddress? shippingAddress;

  AddOrderRequest(
      {required this.paymentMethod,
      required this.items,
      required this.subTotal,
      required this.shippingFee,
      required this.total,
      required this.shippingAddress});
  factory AddOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$AddOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddOrderRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ShippingAddress {
  final String address;

  ShippingAddress({required this.address});
  factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingAddressToJson(this);
}
