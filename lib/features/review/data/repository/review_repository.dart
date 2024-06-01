import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_test/core/constants/firestore_collection.dart';
import 'package:code_test/core/enum/review_score_filter.dart';
import 'package:code_test/core/extension/firestore_extension.dart';
import 'package:code_test/core/model/base_response.dart';
import 'package:code_test/features/review/data/model/review.dart';
import 'package:code_test/features/review/data/model/review_filter.dart';
import 'package:code_test/features/review/data/repository/i_review_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IReviewRepository)
class ReviewRepository implements IReviewRepository {
  final FirebaseFirestore db;
  ReviewRepository(this.db);

  @override
  Future<ApiResponseList<Review>> getProductReviews(
      String pId, ReviewFilter filter) async {
    var query = db
        .collection(FirestoreCollection.reviews)
        .where("productId", isEqualTo: pId)
        .orderBy("score", descending: true)
        .limit(filter.count);
    if (filter.scoreFilter != null) {
      query = query.where("score", isEqualTo: filter.scoreFilter!.value);
    }
    final response = await query.get();
    return response.toApiResponseList(fromDoc: Review.fromFirestore);
  }
}
