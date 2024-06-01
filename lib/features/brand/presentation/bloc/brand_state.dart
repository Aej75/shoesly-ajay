part of "brand_bloc.dart";

@freezed
class BrandState with _$BrandState {
  const factory BrandState.initial() = _Initial;
  const factory BrandState.loading() = _Loading;
  const factory BrandState.loaded({required List<Brand> brands}) = _Loaded;

  const factory BrandState.error({required String message}) = _Error;
}
