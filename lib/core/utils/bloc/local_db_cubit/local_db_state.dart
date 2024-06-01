part of 'local_db_cubit.dart';

@freezed
class LocalDbState with _$LocalDbState {
  const factory LocalDbState.initial() = _Initial;
  const factory LocalDbState.imageLink(String link) = ImageLink;
  const factory LocalDbState.userModel(UserModel usermodel) = UserModelState;
}
