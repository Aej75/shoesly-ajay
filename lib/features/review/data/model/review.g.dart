// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Review _$ReviewFromJson(Map<String, dynamic> json) => Review(
      productId: json['productId'] as String,
      userName: json['userName'] as String,
      userImage: json['userImage'] as String,
      content: json['content'] as String,
      score: json['score'] as num,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      'productId': instance.productId,
      'userName': instance.userName,
      'userImage': instance.userImage,
      'content': instance.content,
      'score': instance.score,
      'createdAt': instance.createdAt.toIso8601String(),
    };
