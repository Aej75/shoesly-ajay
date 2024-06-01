import 'package:code_test/features/dashboard/presentation/widgets/product_tile.dart';
import 'package:code_test/features/product/data/model/product.dart';
import 'package:flutter/material.dart';

class ProductItems extends StatefulWidget {
  final List<Product> currentList;
  final VoidCallback? onScrollEnd;

  const ProductItems({super.key, required this.currentList, this.onScrollEnd});

  @override
  State<ProductItems> createState() => _ProductItemsState();
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
