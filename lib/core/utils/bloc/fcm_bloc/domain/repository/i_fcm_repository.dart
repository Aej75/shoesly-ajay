import '../../data/model/fcm_model.dart';

abstract class IFcmRepository {
  Future<FcmResponseModel> postFcm({required FcmModel model});
  Future<FcmResponseModel> deleteFcm({required FcmModel model});
}
