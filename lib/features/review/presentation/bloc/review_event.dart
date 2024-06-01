part of "review_bloc.dart";

@freezed
class ReviewEvent with _$ReviewEvent {
  const factory ReviewEvent.getReviews(
      {required String productId, required ReviewFilter filter}) = _GetReviews;
}
