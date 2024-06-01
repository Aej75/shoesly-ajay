// import 'package:flutter_rest_client/flutter_rest_client.dart';
// import 'package:injectable/injectable.dart';

// import '../../domain/repository/i_fcm_repository.dart';
// import '../endpoint/fcm_delete_endpoint.dart';
// import '../endpoint/fcm_endpoint.dart';
// import '../model/fcm_model.dart';

// @Injectable(as: IFcmRepository)
// class FcmRepository extends IFcmRepository {
//   // final IHttpHelper iHttpHelper;
//   FcmRepository(this.iHttpHelper);
//   @override
//   Future<FcmResponseModel> postFcm({required FcmModel model}) async {
//     final response = await iHttpHelper.request(FCMEndpoint(), model);
//     if (response != null) {
//       return FcmResponseModel.fromJson(response as Map<String, dynamic>);
//     } else {
//       return FcmResponseModel(ok: false, message: "Something went wrong!");
//     }
//   }

//   @override
//   Future<FcmResponseModel> deleteFcm({required FcmModel model}) async {
//     final response = await iHttpHelper.request(FCMDeleteEndpoint(), model);
//     if (response != null) {
//       return FcmResponseModel.fromJson(response as Map<String, dynamic>);
//     } else {
//       return FcmResponseModel(ok: false, message: "Something went wrong!");
//     }
//   }
// }
