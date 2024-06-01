// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      isVerified: json['isVerified'] as bool?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      id: json['_id'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      contact: json['contact'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.id);
  writeNotNull('isVerified', instance.isVerified);
  writeNotNull('avatar', instance.avatar);
  writeNotNull('fullName', instance.fullName);
  writeNotNull('email', instance.email);
  writeNotNull('contact', instance.contact);
  writeNotNull('city', instance.city);
  writeNotNull('street', instance.street);
  return val;
}
