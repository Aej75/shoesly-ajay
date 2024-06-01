import 'package:code_test/core/model/base_response.dart';
import 'package:code_test/features/review/data/model/review.dart';
import 'package:code_test/features/review/data/model/review_filter.dart';

abstract class IReviewRepository {
  Future<ApiResponseList<Review>> getProductReviews(
      String pId, ReviewFilter filter);
}
