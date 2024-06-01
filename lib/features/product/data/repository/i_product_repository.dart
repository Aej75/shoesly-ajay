import 'package:code_test/core/model/base_response.dart';
import 'package:code_test/features/product/data/model/product.dart';
import 'package:code_test/features/product/data/model/product_filter.dart';

abstract class IProductRepository {
  ///get all products from firestore database
  Future<ApiResponseList<Product>> getProducts({required ProductFilter filter});
}
