import 'package:injectable/injectable.dart';

import '../../data/model/fcm_model.dart';
import '../repository/i_fcm_repository.dart';

abstract class IFcmController {
  Future<FcmResponseModel> postFcm({required FcmModel model});
  Future<FcmResponseModel> deleteFcm({required FcmModel model});
}

@Injectable(as: IFcmController)
class FcmController extends IFcmController {
  final IFcmRepository iFcmRepository;
  FcmController(this.iFcmRepository);
  @override
  Future<FcmResponseModel> postFcm({required FcmModel model}) =>
      iFcmRepository.postFcm(model: model);

  @override
  Future<FcmResponseModel> deleteFcm({required FcmModel model}) =>
      iFcmRepository.deleteFcm(model: model);
}
