import 'package:code_test/features/review/data/model/review.dart';
import 'package:code_test/features/review/data/model/review_filter.dart';
import 'package:code_test/features/review/data/repository/i_review_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part "review_bloc.freezed.dart";
part "review_event.dart";
part "review_state.dart";

@injectable
class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  final IReviewRepository repository;
  ReviewBloc(this.repository) : super(const ReviewState.initial()) {
    on<ReviewEvent>((event, emit) async {
      await event.when(getReviews: (productId, filter) async {
        emit(const ReviewState.loading());
        try {
          final response =
              await repository.getProductReviews(productId, filter);
          if (response.success) {
            emit(ReviewState.loaded(response.data!));
          } else {
            emit(ReviewState.error(response.message));
          }
        } catch (e) {
          emit(ReviewState.error(e.toString()));
        }
      });
    });
  }
}
