part of 'fcm_bloc.dart';

@freezed
class FcmEvent with _$FcmEvent {
  const factory FcmEvent.registerFcm({required String fcmToken}) =
      _RegisterFcmEvent;
  const factory FcmEvent.deleteFcm({required String fcmToken}) =
      _DeleteFcmEvent;
}
