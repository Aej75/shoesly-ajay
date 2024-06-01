// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$AddToCartRequestModelToJson(
        AddToCartRequestModel instance) =>
    <String, dynamic>{
      'product': instance.product.toJson(),
      'size': instance.size,
      'productColor': _$ProductColorEnumMap[instance.productColor],
      'userId': instance.userId,
      'quantity': instance.quantity,
    };

const _$ProductColorEnumMap = {
  ProductColor.black: 'black',
  ProductColor.white: 'white',
  ProductColor.red: 'red',
};
