import 'package:freezed_annotation/freezed_annotation.dart';

part "application_user.g.dart";

@JsonSerializable()
class ApplicationUser {
  final String id;
  final String? name;
  final String? imageUrl;

  ApplicationUser(
      {required this.id, required this.name, required this.imageUrl});

  factory ApplicationUser.fromJson(Map<String, dynamic> json) =>
      _$ApplicationUserFromJson(json);
  Map<String, dynamic> toJson() => _$ApplicationUserToJson(this);
}
