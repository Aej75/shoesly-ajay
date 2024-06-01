import 'package:code_test/core/widgets/app_card.dart';
import 'package:code_test/core/widgets/app_netork_image.dart';
import 'package:code_test/core/widgets/colum_with_padding.dart';
import 'package:code_test/core/widgets/star_view.dart';
import 'package:code_test/features/product/data/model/product.dart';
import 'package:flutter/material.dart';

class SingleProductView extends StatelessWidget {
  final Product product;
  const SingleProductView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: () {
        // context.pushRoute(ProductDetailsRoute(product: product));
      },
      child: Column(
        children: [
          Expanded(
            child: AppCard(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Hero(
                      tag: ObjectKey(product.id!).toString(),
                      child: SizedBox(
                        width: double.infinity,
                        child: AppCachedNetworkImageView(
                          url: product.thumbnail,
                        ),
                      ),
                    ),
                    // Positioned(
                    //   top: 10,
                    //   left: 15,
                    //   child: SizedBox(
                    //     height: 20,
                    //     width: 20,
                    //     child: SvgPicture.network(
                    //         // product.brand.logo,
                    //         // ignore: deprecated_member_use
                    //         // color: Colors.grey,
                    //         ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          ),
          ColumnEachChildPadding(
            padding: const EdgeInsets.only(top: 04),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                maxLines: 1,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 13),
              ),
              Row(
                children: [
                  StarAndAvgScoreView(
                    avgScore: product.avgRating,
                  ),
                  Text(
                    "(${product.totalReviews} Reviews)",
                    style: Theme.of(context).textTheme.titleSmall,
                  )
                ],
              ),
              Text(
                "\$${product.price}",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          )
        ],
      ),
    );
  }
}
