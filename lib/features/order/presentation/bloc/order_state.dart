part of "order_bloc.dart";

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _OrderStateInitial;
  const factory OrderState.loading() = _OrderStateLoading;
  const factory OrderState.success() = _OrderStateSuccess;
  const factory OrderState.failure(String message) = _OrderStateFailure;
}
