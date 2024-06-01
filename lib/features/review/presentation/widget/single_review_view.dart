import 'package:cached_network_image/cached_network_image.dart';
import 'package:code_test/core/constants/app_colors.dart';
import 'package:code_test/core/widgets/colum_with_padding.dart';
import 'package:code_test/features/review/data/model/review.dart';
import 'package:flutter/material.dart';
import 'package:master_ui_collection/core/widgets/rating_bar/master_rating_bar.dart';

class SingleReviewView extends StatelessWidget {
  final Review review;
  const SingleReviewView({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(review.userImage),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: ColumnEachChildPadding(
            padding: const EdgeInsets.only(bottom: 4),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(review.userName,
                      style: Theme.of(context).textTheme.titleMedium),
                  Text(review.createdAt.toString().split(" ").first,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith())
                ],
              ),
              MasterRatingBar(
                rating: review.score.toDouble(),
                isDisabled: true,
                filledColor: AppColors.starColor,
                size: 15,
              ),
              Text(review.content,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: AppColors.blackColor))
            ],
          ))
        ],
      ),
    );
  }
}
