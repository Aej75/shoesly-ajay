import 'package:code_test/core/injection/injection.dart';
import 'package:code_test/core/widgets/error_view.dart';
import 'package:code_test/core/widgets/loading_place_holder.dart';
import 'package:code_test/features/review/data/model/review_filter.dart';
import 'package:code_test/features/review/presentation/bloc/review_bloc.dart';
import 'package:code_test/features/review/presentation/widget/single_review_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductTopReviewView extends StatefulWidget {
  final String productId;
  final int totalReview;
  const ProductTopReviewView(
      {super.key, required this.productId, required this.totalReview});

  @override
  State<ProductTopReviewView> createState() => _ProductTopReviewViewState();
}

class _ProductTopReviewViewState extends State<ProductTopReviewView> {
  final ReviewBloc reviewBloc = getIt<ReviewBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => reviewBloc
        ..add(ReviewEvent.getReviews(
            productId: widget.productId, filter: ReviewFilter(count: 3))),
      child: BlocBuilder<ReviewBloc, ReviewState>(
        builder: (context, state) {
          return state.when(
              initial: loadingView,
              loading: loadingView,
              error: errorView,
              loaded: (reviews) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Reviews(${widget.totalReview})",
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: reviews
                          .map((review) => SingleReviewView(review: review))
                          .toList(),
                    )
                  ],
                );
              });
        },
      ),
    );
  }
}
