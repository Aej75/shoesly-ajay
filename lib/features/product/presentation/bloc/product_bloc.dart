import 'package:code_test/features/product/data/model/product.dart';
import 'package:code_test/features/product/data/model/product_filter.dart';
import 'package:code_test/features/product/data/repository/i_product_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part "product_bloc.freezed.dart";
part "product_event.dart";
part "product_state.dart";

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final IProductRepository repository;
  ProductBloc(this.repository) : super(const ProductState.initial()) {
    on<ProductEvent>((event, emit) async {
      await event.when(getProducts: (filter) async {
        if (state is _Loaded && filter.limit != ProductFilter.perPag) {
          emit(ProductState.loaded((state as _Loaded).products, true));
        } else {
          emit(const ProductState.loading());
        }
        try {
          final response = await repository.getProducts(filter: filter);
          if (response.success) {
            emit(ProductState.loaded(response.data!, false));
          } else {
            emit(ProductState.error(response.message));
          }
        } catch (e) {
          emit(ProductState.error(e.toString()));
        }
      });
    });
  }
}
