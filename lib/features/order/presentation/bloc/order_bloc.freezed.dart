// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderEvent {
  AddOrderRequest get order => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddOrderRequest order) addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddOrderRequest order)? addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddOrderRequest order)? addOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddOrder value) addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrder value)? addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrder value)? addOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderEventCopyWith<OrderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
  @useResult
  $Res call({AddOrderRequest order});
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as AddOrderRequest,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddOrderImplCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$$AddOrderImplCopyWith(
          _$AddOrderImpl value, $Res Function(_$AddOrderImpl) then) =
      __$$AddOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddOrderRequest order});
}

/// @nodoc
class __$$AddOrderImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$AddOrderImpl>
    implements _$$AddOrderImplCopyWith<$Res> {
  __$$AddOrderImplCopyWithImpl(
      _$AddOrderImpl _value, $Res Function(_$AddOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$AddOrderImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as AddOrderRequest,
    ));
  }
}

/// @nodoc

class _$AddOrderImpl implements AddOrder {
  const _$AddOrderImpl({required this.order});

  @override
  final AddOrderRequest order;

  @override
  String toString() {
    return 'OrderEvent.addOrder(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrderImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrderImplCopyWith<_$AddOrderImpl> get copyWith =>
      __$$AddOrderImplCopyWithImpl<_$AddOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddOrderRequest order) addOrder,
  }) {
    return addOrder(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddOrderRequest order)? addOrder,
  }) {
    return addOrder?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddOrderRequest order)? addOrder,
    required TResult orElse(),
  }) {
    if (addOrder != null) {
      return addOrder(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddOrder value) addOrder,
  }) {
    return addOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrder value)? addOrder,
  }) {
    return addOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrder value)? addOrder,
    required TResult orElse(),
  }) {
    if (addOrder != null) {
      return addOrder(this);
    }
    return orElse();
  }
}

abstract class AddOrder implements OrderEvent {
  const factory AddOrder({required final AddOrderRequest order}) =
      _$AddOrderImpl;

  @override
  AddOrderRequest get order;
  @override
  @JsonKey(ignore: true)
  _$$AddOrderImplCopyWith<_$AddOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderStateInitial value) initial,
    required TResult Function(_OrderStateLoading value) loading,
    required TResult Function(_OrderStateSuccess value) success,
    required TResult Function(_OrderStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderStateInitial value)? initial,
    TResult? Function(_OrderStateLoading value)? loading,
    TResult? Function(_OrderStateSuccess value)? success,
    TResult? Function(_OrderStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderStateInitial value)? initial,
    TResult Function(_OrderStateLoading value)? loading,
    TResult Function(_OrderStateSuccess value)? success,
    TResult Function(_OrderStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OrderStateInitialImplCopyWith<$Res> {
  factory _$$OrderStateInitialImplCopyWith(_$OrderStateInitialImpl value,
          $Res Function(_$OrderStateInitialImpl) then) =
      __$$OrderStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderStateInitialImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderStateInitialImpl>
    implements _$$OrderStateInitialImplCopyWith<$Res> {
  __$$OrderStateInitialImplCopyWithImpl(_$OrderStateInitialImpl _value,
      $Res Function(_$OrderStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderStateInitialImpl implements _OrderStateInitial {
  const _$OrderStateInitialImpl();

  @override
  String toString() {
    return 'OrderState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderStateInitial value) initial,
    required TResult Function(_OrderStateLoading value) loading,
    required TResult Function(_OrderStateSuccess value) success,
    required TResult Function(_OrderStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderStateInitial value)? initial,
    TResult? Function(_OrderStateLoading value)? loading,
    TResult? Function(_OrderStateSuccess value)? success,
    TResult? Function(_OrderStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderStateInitial value)? initial,
    TResult Function(_OrderStateLoading value)? loading,
    TResult Function(_OrderStateSuccess value)? success,
    TResult Function(_OrderStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _OrderStateInitial implements OrderState {
  const factory _OrderStateInitial() = _$OrderStateInitialImpl;
}

/// @nodoc
abstract class _$$OrderStateLoadingImplCopyWith<$Res> {
  factory _$$OrderStateLoadingImplCopyWith(_$OrderStateLoadingImpl value,
          $Res Function(_$OrderStateLoadingImpl) then) =
      __$$OrderStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderStateLoadingImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderStateLoadingImpl>
    implements _$$OrderStateLoadingImplCopyWith<$Res> {
  __$$OrderStateLoadingImplCopyWithImpl(_$OrderStateLoadingImpl _value,
      $Res Function(_$OrderStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderStateLoadingImpl implements _OrderStateLoading {
  const _$OrderStateLoadingImpl();

  @override
  String toString() {
    return 'OrderState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failure,
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
    required TResult Function(_OrderStateInitial value) initial,
    required TResult Function(_OrderStateLoading value) loading,
    required TResult Function(_OrderStateSuccess value) success,
    required TResult Function(_OrderStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderStateInitial value)? initial,
    TResult? Function(_OrderStateLoading value)? loading,
    TResult? Function(_OrderStateSuccess value)? success,
    TResult? Function(_OrderStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderStateInitial value)? initial,
    TResult Function(_OrderStateLoading value)? loading,
    TResult Function(_OrderStateSuccess value)? success,
    TResult Function(_OrderStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _OrderStateLoading implements OrderState {
  const factory _OrderStateLoading() = _$OrderStateLoadingImpl;
}

/// @nodoc
abstract class _$$OrderStateSuccessImplCopyWith<$Res> {
  factory _$$OrderStateSuccessImplCopyWith(_$OrderStateSuccessImpl value,
          $Res Function(_$OrderStateSuccessImpl) then) =
      __$$OrderStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderStateSuccessImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderStateSuccessImpl>
    implements _$$OrderStateSuccessImplCopyWith<$Res> {
  __$$OrderStateSuccessImplCopyWithImpl(_$OrderStateSuccessImpl _value,
      $Res Function(_$OrderStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderStateSuccessImpl implements _OrderStateSuccess {
  const _$OrderStateSuccessImpl();

  @override
  String toString() {
    return 'OrderState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderStateInitial value) initial,
    required TResult Function(_OrderStateLoading value) loading,
    required TResult Function(_OrderStateSuccess value) success,
    required TResult Function(_OrderStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderStateInitial value)? initial,
    TResult? Function(_OrderStateLoading value)? loading,
    TResult? Function(_OrderStateSuccess value)? success,
    TResult? Function(_OrderStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderStateInitial value)? initial,
    TResult Function(_OrderStateLoading value)? loading,
    TResult Function(_OrderStateSuccess value)? success,
    TResult Function(_OrderStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _OrderStateSuccess implements OrderState {
  const factory _OrderStateSuccess() = _$OrderStateSuccessImpl;
}

/// @nodoc
abstract class _$$OrderStateFailureImplCopyWith<$Res> {
  factory _$$OrderStateFailureImplCopyWith(_$OrderStateFailureImpl value,
          $Res Function(_$OrderStateFailureImpl) then) =
      __$$OrderStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OrderStateFailureImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderStateFailureImpl>
    implements _$$OrderStateFailureImplCopyWith<$Res> {
  __$$OrderStateFailureImplCopyWithImpl(_$OrderStateFailureImpl _value,
      $Res Function(_$OrderStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OrderStateFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderStateFailureImpl implements _OrderStateFailure {
  const _$OrderStateFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'OrderState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStateFailureImplCopyWith<_$OrderStateFailureImpl> get copyWith =>
      __$$OrderStateFailureImplCopyWithImpl<_$OrderStateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failure,
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
    required TResult Function(_OrderStateInitial value) initial,
    required TResult Function(_OrderStateLoading value) loading,
    required TResult Function(_OrderStateSuccess value) success,
    required TResult Function(_OrderStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderStateInitial value)? initial,
    TResult? Function(_OrderStateLoading value)? loading,
    TResult? Function(_OrderStateSuccess value)? success,
    TResult? Function(_OrderStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderStateInitial value)? initial,
    TResult Function(_OrderStateLoading value)? loading,
    TResult Function(_OrderStateSuccess value)? success,
    TResult Function(_OrderStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _OrderStateFailure implements OrderState {
  const factory _OrderStateFailure(final String message) =
      _$OrderStateFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$OrderStateFailureImplCopyWith<_$OrderStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
