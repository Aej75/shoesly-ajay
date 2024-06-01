part of "cart_bloc.dart";

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getCart() = _GetCart;
  const factory CartEvent.addToCart(AddToCartRequestModel request) = _AddToCart;
  const factory CartEvent.deleteCartItem(String cartId) = _DeleteCartItem;
  const factory CartEvent.updateCartItem(String cartId, int quantity) =
      _UpdateCartItem;
}
