// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCart,
    required TResult Function(AddToCartRequestModel request) addToCart,
    required TResult Function(String cartId) deleteCartItem,
    required TResult Function(String cartId, int quantity) updateCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCart,
    TResult? Function(AddToCartRequestModel request)? addToCart,
    TResult? Function(String cartId)? deleteCartItem,
    TResult? Function(String cartId, int quantity)? updateCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCart,
    TResult Function(AddToCartRequestModel request)? addToCart,
    TResult Function(String cartId)? deleteCartItem,
    TResult Function(String cartId, int quantity)? updateCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_DeleteCartItem value) deleteCartItem,
    required TResult Function(_UpdateCartItem value) updateCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_DeleteCartItem value)? deleteCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCart value)? getCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_DeleteCartItem value)? deleteCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCartImplCopyWith<$Res> {
  factory _$$GetCartImplCopyWith(
          _$GetCartImpl value, $Res Function(_$GetCartImpl) then) =
      __$$GetCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetCartImpl>
    implements _$$GetCartImplCopyWith<$Res> {
  __$$GetCartImplCopyWithImpl(
      _$GetCartImpl _value, $Res Function(_$GetCartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCartImpl implements _GetCart {
  const _$GetCartImpl();

  @override
  String toString() {
    return 'CartEvent.getCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCart,
    required TResult Function(AddToCartRequestModel request) addToCart,
    required TResult Function(String cartId) deleteCartItem,
    required TResult Function(String cartId, int quantity) updateCartItem,
  }) {
    return getCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCart,
    TResult? Function(AddToCartRequestModel request)? addToCart,
    TResult? Function(String cartId)? deleteCartItem,
    TResult? Function(String cartId, int quantity)? updateCartItem,
  }) {
    return getCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCart,
    TResult Function(AddToCartRequestModel request)? addToCart,
    TResult Function(String cartId)? deleteCartItem,
    TResult Function(String cartId, int quantity)? updateCartItem,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_DeleteCartItem value) deleteCartItem,
    required TResult Function(_UpdateCartItem value) updateCartItem,
  }) {
    return getCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_DeleteCartItem value)? deleteCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
  }) {
    return getCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCart value)? getCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_DeleteCartItem value)? deleteCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(this);
    }
    return orElse();
  }
}

abstract class _GetCart implements CartEvent {
  const factory _GetCart() = _$GetCartImpl;
}

/// @nodoc
abstract class _$$AddToCartImplCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddToCartRequestModel request});
}

/// @nodoc
class __$$AddToCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddToCartImpl>
    implements _$$AddToCartImplCopyWith<$Res> {
  __$$AddToCartImplCopyWithImpl(
      _$AddToCartImpl _value, $Res Function(_$AddToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$AddToCartImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as AddToCartRequestModel,
    ));
  }
}

/// @nodoc

class _$AddToCartImpl implements _AddToCart {
  const _$AddToCartImpl(this.request);

  @override
  final AddToCartRequestModel request;

  @override
  String toString() {
    return 'CartEvent.addToCart(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      __$$AddToCartImplCopyWithImpl<_$AddToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCart,
    required TResult Function(AddToCartRequestModel request) addToCart,
    required TResult Function(String cartId) deleteCartItem,
    required TResult Function(String cartId, int quantity) updateCartItem,
  }) {
    return addToCart(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCart,
    TResult? Function(AddToCartRequestModel request)? addToCart,
    TResult? Function(String cartId)? deleteCartItem,
    TResult? Function(String cartId, int quantity)? updateCartItem,
  }) {
    return addToCart?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCart,
    TResult Function(AddToCartRequestModel request)? addToCart,
    TResult Function(String cartId)? deleteCartItem,
    TResult Function(String cartId, int quantity)? updateCartItem,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_DeleteCartItem value) deleteCartItem,
    required TResult Function(_UpdateCartItem value) updateCartItem,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_DeleteCartItem value)? deleteCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCart value)? getCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_DeleteCartItem value)? deleteCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CartEvent {
  const factory _AddToCart(final AddToCartRequestModel request) =
      _$AddToCartImpl;

  AddToCartRequestModel get request;
  @JsonKey(ignore: true)
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCartItemImplCopyWith<$Res> {
  factory _$$DeleteCartItemImplCopyWith(_$DeleteCartItemImpl value,
          $Res Function(_$DeleteCartItemImpl) then) =
      __$$DeleteCartItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cartId});
}

/// @nodoc
class __$$DeleteCartItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DeleteCartItemImpl>
    implements _$$DeleteCartItemImplCopyWith<$Res> {
  __$$DeleteCartItemImplCopyWithImpl(
      _$DeleteCartItemImpl _value, $Res Function(_$DeleteCartItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
  }) {
    return _then(_$DeleteCartItemImpl(
      null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCartItemImpl implements _DeleteCartItem {
  const _$DeleteCartItemImpl(this.cartId);

  @override
  final String cartId;

  @override
  String toString() {
    return 'CartEvent.deleteCartItem(cartId: $cartId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCartItemImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCartItemImplCopyWith<_$DeleteCartItemImpl> get copyWith =>
      __$$DeleteCartItemImplCopyWithImpl<_$DeleteCartItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCart,
    required TResult Function(AddToCartRequestModel request) addToCart,
    required TResult Function(String cartId) deleteCartItem,
    required TResult Function(String cartId, int quantity) updateCartItem,
  }) {
    return deleteCartItem(cartId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCart,
    TResult? Function(AddToCartRequestModel request)? addToCart,
    TResult? Function(String cartId)? deleteCartItem,
    TResult? Function(String cartId, int quantity)? updateCartItem,
  }) {
    return deleteCartItem?.call(cartId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCart,
    TResult Function(AddToCartRequestModel request)? addToCart,
    TResult Function(String cartId)? deleteCartItem,
    TResult Function(String cartId, int quantity)? updateCartItem,
    required TResult orElse(),
  }) {
    if (deleteCartItem != null) {
      return deleteCartItem(cartId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_DeleteCartItem value) deleteCartItem,
    required TResult Function(_UpdateCartItem value) updateCartItem,
  }) {
    return deleteCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_DeleteCartItem value)? deleteCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
  }) {
    return deleteCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCart value)? getCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_DeleteCartItem value)? deleteCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    required TResult orElse(),
  }) {
    if (deleteCartItem != null) {
      return deleteCartItem(this);
    }
    return orElse();
  }
}

abstract class _DeleteCartItem implements CartEvent {
  const factory _DeleteCartItem(final String cartId) = _$DeleteCartItemImpl;

  String get cartId;
  @JsonKey(ignore: true)
  _$$DeleteCartItemImplCopyWith<_$DeleteCartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCartItemImplCopyWith<$Res> {
  factory _$$UpdateCartItemImplCopyWith(_$UpdateCartItemImpl value,
          $Res Function(_$UpdateCartItemImpl) then) =
      __$$UpdateCartItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cartId, int quantity});
}

/// @nodoc
class __$$UpdateCartItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateCartItemImpl>
    implements _$$UpdateCartItemImplCopyWith<$Res> {
  __$$UpdateCartItemImplCopyWithImpl(
      _$UpdateCartItemImpl _value, $Res Function(_$UpdateCartItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? quantity = null,
  }) {
    return _then(_$UpdateCartItemImpl(
      null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCartItemImpl implements _UpdateCartItem {
  const _$UpdateCartItemImpl(this.cartId, this.quantity);

  @override
  final String cartId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.updateCartItem(cartId: $cartId, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartItemImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartId, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartItemImplCopyWith<_$UpdateCartItemImpl> get copyWith =>
      __$$UpdateCartItemImplCopyWithImpl<_$UpdateCartItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCart,
    required TResult Function(AddToCartRequestModel request) addToCart,
    required TResult Function(String cartId) deleteCartItem,
    required TResult Function(String cartId, int quantity) updateCartItem,
  }) {
    return updateCartItem(cartId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCart,
    TResult? Function(AddToCartRequestModel request)? addToCart,
    TResult? Function(String cartId)? deleteCartItem,
    TResult? Function(String cartId, int quantity)? updateCartItem,
  }) {
    return updateCartItem?.call(cartId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCart,
    TResult Function(AddToCartRequestModel request)? addToCart,
    TResult Function(String cartId)? deleteCartItem,
    TResult Function(String cartId, int quantity)? updateCartItem,
    required TResult orElse(),
  }) {
    if (updateCartItem != null) {
      return updateCartItem(cartId, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_DeleteCartItem value) deleteCartItem,
    required TResult Function(_UpdateCartItem value) updateCartItem,
  }) {
    return updateCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_DeleteCartItem value)? deleteCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
  }) {
    return updateCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCart value)? getCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_DeleteCartItem value)? deleteCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    required TResult orElse(),
  }) {
    if (updateCartItem != null) {
      return updateCartItem(this);
    }
    return orElse();
  }
}

abstract class _UpdateCartItem implements CartEvent {
  const factory _UpdateCartItem(final String cartId, final int quantity) =
      _$UpdateCartItemImpl;

  String get cartId;
  int get quantity;
  @JsonKey(ignore: true)
  _$$UpdateCartItemImplCopyWith<_$UpdateCartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartItem> cartItems) getCartSuccess,
    required TResult Function(String message) failure,
    required TResult Function() loading,
    required TResult Function() addToCartState,
    required TResult Function() cartInitial,
    required TResult Function() addToCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartItem> cartItems)? getCartSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? loading,
    TResult? Function()? addToCartState,
    TResult? Function()? cartInitial,
    TResult? Function()? addToCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartItem> cartItems)? getCartSuccess,
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function()? addToCartState,
    TResult Function()? cartInitial,
    TResult Function()? addToCartSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartState value) getCartSuccess,
    required TResult Function(_CartStateFailure value) failure,
    required TResult Function(_CartStateLoading value) loading,
    required TResult Function(_CartStateAddingLoading value) addToCartState,
    required TResult Function(_CartStateInitial value) cartInitial,
    required TResult Function(_CartStateAddToCartSuccess value)
        addToCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartState value)? getCartSuccess,
    TResult? Function(_CartStateFailure value)? failure,
    TResult? Function(_CartStateLoading value)? loading,
    TResult? Function(_CartStateAddingLoading value)? addToCartState,
    TResult? Function(_CartStateInitial value)? cartInitial,
    TResult? Function(_CartStateAddToCartSuccess value)? addToCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartState value)? getCartSuccess,
    TResult Function(_CartStateFailure value)? failure,
    TResult Function(_CartStateLoading value)? loading,
    TResult Function(_CartStateAddingLoading value)? addToCartState,
    TResult Function(_CartStateInitial value)? cartInitial,
    TResult Function(_CartStateAddToCartSuccess value)? addToCartSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartItem> cartItems});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_$CartStateImpl(
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ));
  }
}

/// @nodoc

class _$CartStateImpl implements _CartState {
  const _$CartStateImpl({required final List<CartItem> cartItems})
      : _cartItems = cartItems;

  final List<CartItem> _cartItems;
  @override
  List<CartItem> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'CartState.getCartSuccess(cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartItem> cartItems) getCartSuccess,
    required TResult Function(String message) failure,
    required TResult Function() loading,
    required TResult Function() addToCartState,
    required TResult Function() cartInitial,
    required TResult Function() addToCartSuccess,
  }) {
    return getCartSuccess(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartItem> cartItems)? getCartSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? loading,
    TResult? Function()? addToCartState,
    TResult? Function()? cartInitial,
    TResult? Function()? addToCartSuccess,
  }) {
    return getCartSuccess?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartItem> cartItems)? getCartSuccess,
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function()? addToCartState,
    TResult Function()? cartInitial,
    TResult Function()? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (getCartSuccess != null) {
      return getCartSuccess(cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartState value) getCartSuccess,
    required TResult Function(_CartStateFailure value) failure,
    required TResult Function(_CartStateLoading value) loading,
    required TResult Function(_CartStateAddingLoading value) addToCartState,
    required TResult Function(_CartStateInitial value) cartInitial,
    required TResult Function(_CartStateAddToCartSuccess value)
        addToCartSuccess,
  }) {
    return getCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartState value)? getCartSuccess,
    TResult? Function(_CartStateFailure value)? failure,
    TResult? Function(_CartStateLoading value)? loading,
    TResult? Function(_CartStateAddingLoading value)? addToCartState,
    TResult? Function(_CartStateInitial value)? cartInitial,
    TResult? Function(_CartStateAddToCartSuccess value)? addToCartSuccess,
  }) {
    return getCartSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartState value)? getCartSuccess,
    TResult Function(_CartStateFailure value)? failure,
    TResult Function(_CartStateLoading value)? loading,
    TResult Function(_CartStateAddingLoading value)? addToCartState,
    TResult Function(_CartStateInitial value)? cartInitial,
    TResult Function(_CartStateAddToCartSuccess value)? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (getCartSuccess != null) {
      return getCartSuccess(this);
    }
    return orElse();
  }
}

abstract class _CartState implements CartState {
  const factory _CartState({required final List<CartItem> cartItems}) =
      _$CartStateImpl;

  List<CartItem> get cartItems;
  @JsonKey(ignore: true)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartStateFailureImplCopyWith<$Res> {
  factory _$$CartStateFailureImplCopyWith(_$CartStateFailureImpl value,
          $Res Function(_$CartStateFailureImpl) then) =
      __$$CartStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CartStateFailureImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateFailureImpl>
    implements _$$CartStateFailureImplCopyWith<$Res> {
  __$$CartStateFailureImplCopyWithImpl(_$CartStateFailureImpl _value,
      $Res Function(_$CartStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CartStateFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartStateFailureImpl implements _CartStateFailure {
  const _$CartStateFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CartState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateFailureImplCopyWith<_$CartStateFailureImpl> get copyWith =>
      __$$CartStateFailureImplCopyWithImpl<_$CartStateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartItem> cartItems) getCartSuccess,
    required TResult Function(String message) failure,
    required TResult Function() loading,
    required TResult Function() addToCartState,
    required TResult Function() cartInitial,
    required TResult Function() addToCartSuccess,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartItem> cartItems)? getCartSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? loading,
    TResult? Function()? addToCartState,
    TResult? Function()? cartInitial,
    TResult? Function()? addToCartSuccess,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartItem> cartItems)? getCartSuccess,
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function()? addToCartState,
    TResult Function()? cartInitial,
    TResult Function()? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartState value) getCartSuccess,
    required TResult Function(_CartStateFailure value) failure,
    required TResult Function(_CartStateLoading value) loading,
    required TResult Function(_CartStateAddingLoading value) addToCartState,
    required TResult Function(_CartStateInitial value) cartInitial,
    required TResult Function(_CartStateAddToCartSuccess value)
        addToCartSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartState value)? getCartSuccess,
    TResult? Function(_CartStateFailure value)? failure,
    TResult? Function(_CartStateLoading value)? loading,
    TResult? Function(_CartStateAddingLoading value)? addToCartState,
    TResult? Function(_CartStateInitial value)? cartInitial,
    TResult? Function(_CartStateAddToCartSuccess value)? addToCartSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartState value)? getCartSuccess,
    TResult Function(_CartStateFailure value)? failure,
    TResult Function(_CartStateLoading value)? loading,
    TResult Function(_CartStateAddingLoading value)? addToCartState,
    TResult Function(_CartStateInitial value)? cartInitial,
    TResult Function(_CartStateAddToCartSuccess value)? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _CartStateFailure implements CartState {
  const factory _CartStateFailure(final String message) =
      _$CartStateFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CartStateFailureImplCopyWith<_$CartStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartStateLoadingImplCopyWith<$Res> {
  factory _$$CartStateLoadingImplCopyWith(_$CartStateLoadingImpl value,
          $Res Function(_$CartStateLoadingImpl) then) =
      __$$CartStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartStateLoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateLoadingImpl>
    implements _$$CartStateLoadingImplCopyWith<$Res> {
  __$$CartStateLoadingImplCopyWithImpl(_$CartStateLoadingImpl _value,
      $Res Function(_$CartStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartStateLoadingImpl implements _CartStateLoading {
  const _$CartStateLoadingImpl();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartItem> cartItems) getCartSuccess,
    required TResult Function(String message) failure,
    required TResult Function() loading,
    required TResult Function() addToCartState,
    required TResult Function() cartInitial,
    required TResult Function() addToCartSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartItem> cartItems)? getCartSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? loading,
    TResult? Function()? addToCartState,
    TResult? Function()? cartInitial,
    TResult? Function()? addToCartSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartItem> cartItems)? getCartSuccess,
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function()? addToCartState,
    TResult Function()? cartInitial,
    TResult Function()? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartState value) getCartSuccess,
    required TResult Function(_CartStateFailure value) failure,
    required TResult Function(_CartStateLoading value) loading,
    required TResult Function(_CartStateAddingLoading value) addToCartState,
    required TResult Function(_CartStateInitial value) cartInitial,
    required TResult Function(_CartStateAddToCartSuccess value)
        addToCartSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartState value)? getCartSuccess,
    TResult? Function(_CartStateFailure value)? failure,
    TResult? Function(_CartStateLoading value)? loading,
    TResult? Function(_CartStateAddingLoading value)? addToCartState,
    TResult? Function(_CartStateInitial value)? cartInitial,
    TResult? Function(_CartStateAddToCartSuccess value)? addToCartSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartState value)? getCartSuccess,
    TResult Function(_CartStateFailure value)? failure,
    TResult Function(_CartStateLoading value)? loading,
    TResult Function(_CartStateAddingLoading value)? addToCartState,
    TResult Function(_CartStateInitial value)? cartInitial,
    TResult Function(_CartStateAddToCartSuccess value)? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CartStateLoading implements CartState {
  const factory _CartStateLoading() = _$CartStateLoadingImpl;
}

/// @nodoc
abstract class _$$CartStateAddingLoadingImplCopyWith<$Res> {
  factory _$$CartStateAddingLoadingImplCopyWith(
          _$CartStateAddingLoadingImpl value,
          $Res Function(_$CartStateAddingLoadingImpl) then) =
      __$$CartStateAddingLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartStateAddingLoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateAddingLoadingImpl>
    implements _$$CartStateAddingLoadingImplCopyWith<$Res> {
  __$$CartStateAddingLoadingImplCopyWithImpl(
      _$CartStateAddingLoadingImpl _value,
      $Res Function(_$CartStateAddingLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartStateAddingLoadingImpl implements _CartStateAddingLoading {
  const _$CartStateAddingLoadingImpl();

  @override
  String toString() {
    return 'CartState.addToCartState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateAddingLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartItem> cartItems) getCartSuccess,
    required TResult Function(String message) failure,
    required TResult Function() loading,
    required TResult Function() addToCartState,
    required TResult Function() cartInitial,
    required TResult Function() addToCartSuccess,
  }) {
    return addToCartState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartItem> cartItems)? getCartSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? loading,
    TResult? Function()? addToCartState,
    TResult? Function()? cartInitial,
    TResult? Function()? addToCartSuccess,
  }) {
    return addToCartState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartItem> cartItems)? getCartSuccess,
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function()? addToCartState,
    TResult Function()? cartInitial,
    TResult Function()? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (addToCartState != null) {
      return addToCartState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartState value) getCartSuccess,
    required TResult Function(_CartStateFailure value) failure,
    required TResult Function(_CartStateLoading value) loading,
    required TResult Function(_CartStateAddingLoading value) addToCartState,
    required TResult Function(_CartStateInitial value) cartInitial,
    required TResult Function(_CartStateAddToCartSuccess value)
        addToCartSuccess,
  }) {
    return addToCartState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartState value)? getCartSuccess,
    TResult? Function(_CartStateFailure value)? failure,
    TResult? Function(_CartStateLoading value)? loading,
    TResult? Function(_CartStateAddingLoading value)? addToCartState,
    TResult? Function(_CartStateInitial value)? cartInitial,
    TResult? Function(_CartStateAddToCartSuccess value)? addToCartSuccess,
  }) {
    return addToCartState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartState value)? getCartSuccess,
    TResult Function(_CartStateFailure value)? failure,
    TResult Function(_CartStateLoading value)? loading,
    TResult Function(_CartStateAddingLoading value)? addToCartState,
    TResult Function(_CartStateInitial value)? cartInitial,
    TResult Function(_CartStateAddToCartSuccess value)? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (addToCartState != null) {
      return addToCartState(this);
    }
    return orElse();
  }
}

abstract class _CartStateAddingLoading implements CartState {
  const factory _CartStateAddingLoading() = _$CartStateAddingLoadingImpl;
}

/// @nodoc
abstract class _$$CartStateInitialImplCopyWith<$Res> {
  factory _$$CartStateInitialImplCopyWith(_$CartStateInitialImpl value,
          $Res Function(_$CartStateInitialImpl) then) =
      __$$CartStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartStateInitialImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateInitialImpl>
    implements _$$CartStateInitialImplCopyWith<$Res> {
  __$$CartStateInitialImplCopyWithImpl(_$CartStateInitialImpl _value,
      $Res Function(_$CartStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartStateInitialImpl implements _CartStateInitial {
  const _$CartStateInitialImpl();

  @override
  String toString() {
    return 'CartState.cartInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartItem> cartItems) getCartSuccess,
    required TResult Function(String message) failure,
    required TResult Function() loading,
    required TResult Function() addToCartState,
    required TResult Function() cartInitial,
    required TResult Function() addToCartSuccess,
  }) {
    return cartInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartItem> cartItems)? getCartSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? loading,
    TResult? Function()? addToCartState,
    TResult? Function()? cartInitial,
    TResult? Function()? addToCartSuccess,
  }) {
    return cartInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartItem> cartItems)? getCartSuccess,
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function()? addToCartState,
    TResult Function()? cartInitial,
    TResult Function()? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (cartInitial != null) {
      return cartInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartState value) getCartSuccess,
    required TResult Function(_CartStateFailure value) failure,
    required TResult Function(_CartStateLoading value) loading,
    required TResult Function(_CartStateAddingLoading value) addToCartState,
    required TResult Function(_CartStateInitial value) cartInitial,
    required TResult Function(_CartStateAddToCartSuccess value)
        addToCartSuccess,
  }) {
    return cartInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartState value)? getCartSuccess,
    TResult? Function(_CartStateFailure value)? failure,
    TResult? Function(_CartStateLoading value)? loading,
    TResult? Function(_CartStateAddingLoading value)? addToCartState,
    TResult? Function(_CartStateInitial value)? cartInitial,
    TResult? Function(_CartStateAddToCartSuccess value)? addToCartSuccess,
  }) {
    return cartInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartState value)? getCartSuccess,
    TResult Function(_CartStateFailure value)? failure,
    TResult Function(_CartStateLoading value)? loading,
    TResult Function(_CartStateAddingLoading value)? addToCartState,
    TResult Function(_CartStateInitial value)? cartInitial,
    TResult Function(_CartStateAddToCartSuccess value)? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (cartInitial != null) {
      return cartInitial(this);
    }
    return orElse();
  }
}

abstract class _CartStateInitial implements CartState {
  const factory _CartStateInitial() = _$CartStateInitialImpl;
}

/// @nodoc
abstract class _$$CartStateAddToCartSuccessImplCopyWith<$Res> {
  factory _$$CartStateAddToCartSuccessImplCopyWith(
          _$CartStateAddToCartSuccessImpl value,
          $Res Function(_$CartStateAddToCartSuccessImpl) then) =
      __$$CartStateAddToCartSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartStateAddToCartSuccessImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateAddToCartSuccessImpl>
    implements _$$CartStateAddToCartSuccessImplCopyWith<$Res> {
  __$$CartStateAddToCartSuccessImplCopyWithImpl(
      _$CartStateAddToCartSuccessImpl _value,
      $Res Function(_$CartStateAddToCartSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartStateAddToCartSuccessImpl implements _CartStateAddToCartSuccess {
  const _$CartStateAddToCartSuccessImpl();

  @override
  String toString() {
    return 'CartState.addToCartSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateAddToCartSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartItem> cartItems) getCartSuccess,
    required TResult Function(String message) failure,
    required TResult Function() loading,
    required TResult Function() addToCartState,
    required TResult Function() cartInitial,
    required TResult Function() addToCartSuccess,
  }) {
    return addToCartSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartItem> cartItems)? getCartSuccess,
    TResult? Function(String message)? failure,
    TResult? Function()? loading,
    TResult? Function()? addToCartState,
    TResult? Function()? cartInitial,
    TResult? Function()? addToCartSuccess,
  }) {
    return addToCartSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartItem> cartItems)? getCartSuccess,
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function()? addToCartState,
    TResult Function()? cartInitial,
    TResult Function()? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (addToCartSuccess != null) {
      return addToCartSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartState value) getCartSuccess,
    required TResult Function(_CartStateFailure value) failure,
    required TResult Function(_CartStateLoading value) loading,
    required TResult Function(_CartStateAddingLoading value) addToCartState,
    required TResult Function(_CartStateInitial value) cartInitial,
    required TResult Function(_CartStateAddToCartSuccess value)
        addToCartSuccess,
  }) {
    return addToCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartState value)? getCartSuccess,
    TResult? Function(_CartStateFailure value)? failure,
    TResult? Function(_CartStateLoading value)? loading,
    TResult? Function(_CartStateAddingLoading value)? addToCartState,
    TResult? Function(_CartStateInitial value)? cartInitial,
    TResult? Function(_CartStateAddToCartSuccess value)? addToCartSuccess,
  }) {
    return addToCartSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartState value)? getCartSuccess,
    TResult Function(_CartStateFailure value)? failure,
    TResult Function(_CartStateLoading value)? loading,
    TResult Function(_CartStateAddingLoading value)? addToCartState,
    TResult Function(_CartStateInitial value)? cartInitial,
    TResult Function(_CartStateAddToCartSuccess value)? addToCartSuccess,
    required TResult orElse(),
  }) {
    if (addToCartSuccess != null) {
      return addToCartSuccess(this);
    }
    return orElse();
  }
}

abstract class _CartStateAddToCartSuccess implements CartState {
  const factory _CartStateAddToCartSuccess() = _$CartStateAddToCartSuccessImpl;
}
