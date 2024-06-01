import 'package:bloc/bloc.dart';
import 'package:code_test/core/utils/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/injection/injection.dart';
import '../../../../core/utils/session/i_session_manager.dart';

part 'local_db_cubit.freezed.dart';
part 'local_db_state.dart';

class LocalDbCubit extends Cubit<LocalDbState> {
  LocalDbCubit() : super(const _Initial());
  void updateAvatar(String? image) {
    emit(ImageLink(image ?? ''));
  }

  Future<void> getUserModel() async {
    final userModel = await getIt<ISessionManager>().getCurrentUser();

    if (userModel != null) {
      emit(UserModelState(userModel));
    } else {
      emit(const LocalDbState.initial());
    }
  }
}
