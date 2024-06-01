import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_test/core/constants/firestore_collection.dart';
import 'package:code_test/core/routes/app_router.gr.dart';
import 'package:code_test/core/utils/firebase_config/firebase_config.dart';
import 'package:code_test/core/widgets/app_card.dart';
import 'package:code_test/core/widgets/app_netork_image.dart';
import 'package:code_test/features/brand/data/model/brand.dart';
import 'package:code_test/features/product/data/model/product.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class ProductTile extends StatefulWidget {
  final Product product;

  const ProductTile({
    super.key,
    required this.product,
  });

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  Brand? brandModel;
  getBrands() async {
    final brandCollection =
        FirebaseFirestore.instance.collection(FirestoreCollection.brands);
    final brandCollectionService = FirebaseClient<Brand>(brandCollection);

    final brands = await brandCollectionService.readCollection(
      toMap: (Map<String, dynamic> data, String id) {
        return Brand.fromJson(data);
      },
    );
    brandModel =
        brands.firstWhere((element) => element.name == widget.product.brand);
    setState(() {});
  }

  @override
  void initState() {
    getBrands();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: AppCard(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Hero(
                    tag: ObjectKey(widget.product.id!).toString(),
                    child: SizedBox(
                      width: double.infinity,
                      child: AppCachedNetworkImageView(
                        url: widget.product.thumbnail,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 15,
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: AppCachedNetworkImageView(
                        url: brandModel?.logo ?? '',
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          widget.product.name,
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 4.0),
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.yellow,
              size: 16.0,
            ),
            const SizedBox(width: 4.0),
            Text(
              widget.product.avgRating.toString(),
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 4.0),
            Text(
              '(${widget.product.totalReviews} Reviews)',
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        Text(
          '\$${widget.product.price}',
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ).gestures(onTap: () {
      context.router.push(ProductDetailsPageRoute(product: widget.product));
    });
  }
}
