part of 'fcm_bloc.dart';

@freezed
class FcmState with _$FcmState {
  const factory FcmState.initial() = _Initial;
  const factory FcmState.loading() = _Loading;
  const factory FcmState.success() = _Success;
  const factory FcmState.failure(String message) = _Fail;
}
