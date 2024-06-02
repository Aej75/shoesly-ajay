// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOrderRequest _$AddOrderRequestFromJson(Map<String, dynamic> json) =>
    AddOrderRequest(
      paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
      items: (json['items'] as List<dynamic>)
          .map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      subTotal: (json['subTotal'] as num).toDouble(),
      shippingFee: (json['shippingFee'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
      shippingAddress: json['shippingAddress'] == null
          ? null
          : ShippingAddress.fromJson(
              json['shippingAddress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddOrderRequestToJson(AddOrderRequest instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'subTotal': instance.subTotal,
      'shippingFee': instance.shippingFee,
      'total': instance.total,
      'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
      'shippingAddress': instance.shippingAddress?.toJson(),
    };

const _$PaymentMethodEnumMap = {
  PaymentMethod.cash: 'cash',
  PaymentMethod.online: 'online',
};

ShippingAddress _$ShippingAddressFromJson(Map<String, dynamic> json) =>
    ShippingAddress(
      address: json['address'] as String,
    );

Map<String, dynamic> _$ShippingAddressToJson(ShippingAddress instance) =>
    <String, dynamic>{
      'address': instance.address,
    };
