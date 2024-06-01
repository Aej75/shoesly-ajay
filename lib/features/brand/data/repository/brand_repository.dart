import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_test/core/constants/firestore_collection.dart';
import 'package:code_test/core/extension/firestore_extension.dart';
import 'package:code_test/core/model/base_response.dart';
import 'package:code_test/features/brand/data/model/brand.dart';
import 'package:code_test/features/brand/data/repository/i_brand_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IBrandRepository)
class BrandRepository implements IBrandRepository {
  final FirebaseFirestore db;
  BrandRepository({required this.db});

  ///get all brands from firestore database
  @override
  Future<ApiResponseList<Brand>> getBrands() async {
    final response = await db.collection(FirestoreCollection.brands).get();
    return response.toApiResponseList(fromDoc: Brand.fromFirestore);
  }
}
