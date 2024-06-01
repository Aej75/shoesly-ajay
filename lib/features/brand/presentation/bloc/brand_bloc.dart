import 'package:code_test/features/brand/data/model/brand.dart';
import 'package:code_test/features/brand/data/repository/i_brand_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part "brand_bloc.freezed.dart";
part "brand_event.dart";
part "brand_state.dart";

@injectable
class BrandBloc extends Bloc<BrandEvent, BrandState> {
  final IBrandRepository brandRepository;
  BrandBloc(this.brandRepository) : super(const BrandState.initial()) {
    on<BrandEvent>((event, emit) async {
      await event.when(getBrands: () async {
        emit(const BrandState.loading());
        final response = await brandRepository.getBrands();
        if (response.success) {
          emit(BrandState.loaded(brands: response.data!));
        } else {
          emit(BrandState.error(message: response.message));
        }
      });
    });
  }
}
