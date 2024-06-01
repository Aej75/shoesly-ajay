// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      price: (json['price'] as num).toDouble(),
      brand: json['brand'] as String,
      avgRating: json['avgRating'] as num,
      totalReviews: (json['totalReviews'] as num).toInt(),
      sizes: (json['sizes'] as List<dynamic>).map((e) => e as num).toList(),
      colors: (json['colors'] as List<dynamic>)
          .map((e) => $enumDecode(_$ProductColorEnumMap, e))
          .toList(),
      thumbnail: json['thumbnail'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
    )..createdAt = json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String);

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'images': instance.images,
      'price': instance.price,
      'brand': instance.brand,
      'avgRating': instance.avgRating,
      'totalReviews': instance.totalReviews,
      'sizes': instance.sizes,
      'colors': instance.colors.map((e) => _$ProductColorEnumMap[e]!).toList(),
      'gender': _$GenderEnumMap[instance.gender]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'thumbnail': instance.thumbnail,
    };

const _$ProductColorEnumMap = {
  ProductColor.black: 'black',
  ProductColor.white: 'white',
  ProductColor.red: 'red',
};

const _$GenderEnumMap = {
  Gender.men: 'men',
  Gender.women: 'women',
  Gender.unisex: 'unisex',
};
