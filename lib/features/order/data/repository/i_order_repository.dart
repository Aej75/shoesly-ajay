import 'package:code_test/core/model/base_response.dart';
import 'package:code_test/features/order/data/model/add_order_request.dart';

abstract class IOrderRepository {
  ///add order to firestore database
  Future<ApiReponse<void>> addOrder({required AddOrderRequest order});
}
