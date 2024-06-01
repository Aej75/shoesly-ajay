part of "product_bloc.dart";

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.getProducts({required ProductFilter filter}) =
      _GetProducts;
}
