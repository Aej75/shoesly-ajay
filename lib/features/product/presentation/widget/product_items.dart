import 'package:code_test/core/export.dart';
import 'package:code_test/core/utils/miscellaneous/spacing_utils.dart';
import 'package:code_test/core/widgets/app_horizontal_shimmer_items.dart';
import 'package:code_test/features/product/presentation/widget/product_tile.dart';
import 'package:code_test/features/product/data/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:master_ui_collection/core/widgets/skeleton/master_skeleton.dart';
import 'package:styled_widget/styled_widget.dart';

class ProductItems extends StatefulWidget {
  final List<Product> currentList;
  final VoidCallback? onScrollEnd;
  final bool isShimmer;

  const ProductItems(
      {super.key,
      required this.currentList,
      this.onScrollEnd,
      this.isShimmer = false});

  @override
  State<ProductItems> createState() => _ProductItemsState();

  static Widget shimmer(context) {
    return Column(
      children: [
        verticalSpacing(space: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MasterSkeleton(
              width: MediaQuery.sizeOf(context).width / 4,
            ),
            MasterSkeleton(
              width: MediaQuery.sizeOf(context).width / 8,
            )
          ],
        ).height(50),
        const AppHorizontalShimemrItems(),
        Expanded(
          child: SingleChildScrollView(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 20,
                  childAspectRatio: 9 / 15),
              itemBuilder: (context, index) {
                return ProductTile.shimmer(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _ProductItemsState extends State<ProductItems> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    if (widget.onScrollEnd != null) {
      _scrollController.addListener(() {
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          widget.onScrollEnd?.call();
        }
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: GridView.builder(
          controller: _scrollController,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.currentList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 25,
              mainAxisSpacing: 20,
              childAspectRatio: 9 / 15),
          itemBuilder: (context, index) {
            return ProductTile(
              product: widget.currentList[index],
            );
          },
        ),
      ),
    );
  }
}
