// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Brand _$BrandFromJson(Map<String, dynamic> json) => Brand(
      id: json['id'] as String?,
      name: json['name'] as String,
      logo: json['logo'] as String,
      totalProducts: (json['totalProducts'] as num).toInt(),
    );

Map<String, dynamic> _$BrandToJson(Brand instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'totalProducts': instance.totalProducts,
    };
