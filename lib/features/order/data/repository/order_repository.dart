import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_test/core/constants/firestore_collection.dart';
import 'package:code_test/core/model/base_response.dart';
import 'package:code_test/features/order/data/model/add_order_request.dart';
import 'package:code_test/features/order/data/repository/i_order_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IOrderRepository)
class OrderRepository implements IOrderRepository {
  final FirebaseFirestore db;
  final FirebaseAuth auth;
  OrderRepository({required this.db, required this.auth});
  @override
  Future<ApiReponse<void>> addOrder({required AddOrderRequest order}) async {
    final data = order.toJson();
    //add created at time to order
    data["createdAt"] = FieldValue.serverTimestamp();
    //make order for current user
    data["userId"] = auth.currentUser!.uid;

    await db.collection(FirestoreCollection.orders).add(data);

    //remove cart items
    await Future.wait(order.items.map(
        (e) => db.collection(FirestoreCollection.carts).doc(e.id).delete()));

    return ApiReponse(
        success: true, message: "Order Placed Successfully", data: null);
  }
}
