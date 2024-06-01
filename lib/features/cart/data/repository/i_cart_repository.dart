import 'package:code_test/core/model/base_response.dart';
import 'package:code_test/features/cart/data/model/add_to_cart_request_model.dart';
import 'package:code_test/features/cart/data/model/cart_item.dart';

abstract class ICartRepository {
  ///get cart items
  ///based on current user
  ///from database
  Future<ApiResponseList<CartItem>> getCartItems(String userId);

  ///add to cart
  Future<bool> addToCart(AddToCartRequestModel request);

  ///delete cart item
  ///id must exit in database

  Future<bool> deleteCartItem(String cartId);

  ///update cart quantity

  Future<bool> updateCartItem(String cartId, int quantity);
}
