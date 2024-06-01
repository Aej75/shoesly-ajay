import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/model/fcm_model.dart';
import '../../domain/controller/i_controller_repository.dart';

part 'fcm_bloc.freezed.dart';
part 'fcm_event.dart';
part 'fcm_state.dart';

@injectable
class FcmBloc extends Bloc<FcmEvent, FcmState> {
  final IFcmController controller;
  FcmBloc(this.controller) : super(const _Initial()) {
    on<FcmEvent>((event, emit) async {
      await event.whenOrNull(registerFcm: (fcmToken) async {
        emit(const _Loading());
        final response =
            await controller.postFcm(model: FcmModel(fcmToken: fcmToken));

        response.ok ?? false
            ? emit(const _Success())
            : emit(_Fail(response.message ?? ''));
      }, deleteFcm: (fcmToken) async {
        emit(const _Loading());
        final response =
            await controller.deleteFcm(model: FcmModel(fcmToken: fcmToken));

        response.ok ?? false
            ? emit(const _Success())
            : emit(const _Fail('Something went wrong'));
      });
    });
  }
}
