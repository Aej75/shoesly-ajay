import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_test/core/constants/firestore_collection.dart';
import 'package:code_test/core/enum/product_color.dart';
import 'package:code_test/core/enum/product_sort.dart';
import 'package:code_test/core/extension/firestore_extension.dart';
import 'package:code_test/core/model/base_response.dart';
import 'package:code_test/features/product/data/model/product.dart';
import 'package:code_test/features/product/data/model/product_filter.dart';
import 'package:code_test/features/product/data/repository/i_product_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IProductRepository)
class ProductRepository implements IProductRepository {
  final FirebaseFirestore db;

  ProductRepository({required this.db});

  @override
  Future<ApiResponseList<Product>> getProducts(
      {required ProductFilter filter}) async {
    Query<Map<String, dynamic>> query =
        db.collection(FirestoreCollection.products).limit(filter.limit);
    //There will be losts of filter if we filter each field in different query
    //to solve this problem even user havenot apply for field the default filter  will be applied and a index for every field already been created
    //this way we can reduce numbe of indexes required in firestore

    if (filter.brand != null) {
      query = query.where("brand", isEqualTo: filter.brand!.name);
    } else {
      query = query.where("brand", isNotEqualTo: null);
    }
    if (filter.color != null) {
      query = query.where("colors", arrayContainsAny: [filter.color!.name]);
    } else {
      query = query.where("colors",
          arrayContainsAny: ProductColor.values.map((e) => e.name).toList());
    }
    if (filter.gender != null) {
      query = query.where("gender", isEqualTo: filter.gender!.name);
    } else {
      query = query.where("gender", isNotEqualTo: null);
    }
    if (filter.sortBy != null) {
      switch (filter.sortBy!) {
        case ProductSort.lowPrice:
          query = query.orderBy("price", descending: false);
          break;
        case ProductSort.highPrice:
          query = query.orderBy("price", descending: true);
          break;
        case ProductSort.recent:
          query = query.orderBy("avgRating", descending: true);
          break;
        default:
          break;
      }
    }
    query = query
        .where("price", isGreaterThanOrEqualTo: filter.range?.min ?? 0)
        .where("price", isLessThanOrEqualTo: filter.range?.max ?? 10000);
    final response = await query.get();
    return response.toApiResponseList(fromDoc: Product.fromFirestore);
  }
}
