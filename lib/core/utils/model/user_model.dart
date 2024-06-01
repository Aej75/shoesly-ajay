import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(includeIfNull: false)
class UserModel {
  @JsonKey(name: '_id')
  final String? id;
  final bool? isVerified;
  final String? avatar;
  final String? fullName;
  final String? email;
  final String? contact;
  final String? city;
  final String? street;

  UserModel({
    this.isVerified,
    this.city,
    this.street,
    this.id,
    this.fullName,
    this.email,
    this.avatar,
    this.contact,
  });

  factory UserModel.fromJson(Map<String, dynamic> data) =>
      _$UserModelFromJson(data);

  @override
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
