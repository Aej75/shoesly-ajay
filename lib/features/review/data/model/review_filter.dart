import 'package:code_test/core/enum/review_score_filter.dart';

class ReviewFilter {
  final int count;
  final ReviewScoreFilter? scoreFilter;
  ReviewFilter({required this.count, this.scoreFilter});
}
