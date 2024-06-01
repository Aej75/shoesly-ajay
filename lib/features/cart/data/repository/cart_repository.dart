import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_test/core/constants/firestore_collection.dart';
import 'package:code_test/core/extension/firestore_extension.dart';
import 'package:code_test/core/model/base_response.dart';
import 'package:code_test/features/cart/data/model/add_to_cart_request_model.dart';
import 'package:code_test/features/cart/data/model/cart_item.dart';
import 'package:code_test/features/cart/data/repository/i_cart_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ICartRepository)
class CartRepository implements ICartRepository {
  final FirebaseFirestore db;
  CartRepository({required this.db});
  @override
  Future<ApiResponseList<CartItem>> getCartItems(String userId) async {
    final response = await db
        .collection(FirestoreCollection.carts)
        .where("userId", isEqualTo: userId)
        .get();
    return response.toApiResponseList(fromDoc: CartItem.fromFirestore);
  }

  @override
  Future<bool> addToCart(AddToCartRequestModel request) async {
    try {
      await db.collection(FirestoreCollection.carts).add(request.toJson());
      return Future.value(true);
    } catch (e) {
      return Future.value(false);
    }
  }

  @override
  Future<bool> deleteCartItem(String cartId) async {
    try {
      await db.collection(FirestoreCollection.carts).doc(cartId).delete();
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> updateCartItem(String cartId, int quantity) async {
    try {
      await db
          .collection(FirestoreCollection.carts)
          .doc(cartId)
          .update({"quantity": quantity});
      return true;
    } catch (e) {
      return false;
    }
  }
}
