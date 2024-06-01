import 'package:code_test/core/model/base_response.dart';
import 'package:code_test/features/brand/data/model/brand.dart';

abstract class IBrandRepository {
  ///Get all brands
  Future<ApiResponseList<Brand>> getBrands();
}
