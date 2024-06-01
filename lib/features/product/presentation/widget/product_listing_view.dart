import 'package:code_test/core/widgets/app_grid_view.dart';
import 'package:code_test/core/widgets/error_view.dart';
import 'package:code_test/core/widgets/loading_place_holder.dart';
import 'package:code_test/core/widgets/no_date_view.dart';
import 'package:code_test/features/product/presentation/bloc/product_bloc.dart';
import 'package:code_test/features/product/presentation/widget/single_product_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListingView extends StatelessWidget {
  final VoidCallback onScrollEnd;
  const ProductListingView({super.key, required this.onScrollEnd});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return state.when(
            initial: () => const SizedBox(),
            loading: () => const LoadingPlaceHolder(),
            loaded: (products, loading) {
              if (products.isEmpty) {
                return const Center(
                  child: NoDataView(
                    message: "No products",
                  ),
                );
              }
              return AppGridView(
                  itemCount: products.length,
                  onScrollEnd: onScrollEnd,
                  loadingMore: loading,
                  delegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 3,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return SingleProductView(product: product);
                  });
            },
            error: (err) => ErrorView(errorMessage: err));
      },
    );
  }
}
