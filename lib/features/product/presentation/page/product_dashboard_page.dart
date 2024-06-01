import 'package:code_test/core/injection/injection.dart';
import 'package:code_test/core/widgets/base_view.dart';
import 'package:code_test/features/brand/presentation/widget/brand_list_view.dart';
import 'package:code_test/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:code_test/features/dashboard/presentation/widgets/cart_icon_button.dart';
import 'package:code_test/features/dashboard/presentation/widgets/filter_button.dart';
import 'package:code_test/features/product/data/model/product_filter.dart';
import 'package:code_test/features/product/presentation/bloc/product_bloc.dart';
import 'package:code_test/features/product/presentation/widget/product_listing_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDashboardPage extends StatefulWidget {
  const ProductDashboardPage({super.key});
  @override
  State<ProductDashboardPage> createState() => _ProductDashboardPageState();
}

class _ProductDashboardPageState extends State<ProductDashboardPage> {
  final ProductBloc productBloc = getIt<ProductBloc>();
  ProductFilter filter = ProductFilter(limit: ProductFilter.perPag);

  loadProducts() {
    productBloc.add(ProductEvent.getProducts(filter: filter));
  }

  @override
  void initState() {
    super.initState();
    loadProducts();
    context.read<CartBloc>().add(const CartEvent.getCart());
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
        titleText: "Discover",
        centerTitle: false,
        fabLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: FilterButton(
            appliedFilter: filter,
            onFilterChanged: (filter) {
              this.filter = filter;
              setState(() {});
              loadProducts();
            },
          ),
        ),
        titleStyle: const TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
        actions: const [CartIconButton()],
        body: BlocProvider(
          create: (context) => productBloc,
          child: Column(
            children: [
              BrandListView(
                selectedBrand: filter.brand,
                onSelected: (brand) {
                  filter.brand = brand;
                  setState(() {});
                  loadProducts();
                },
              ),
              Expanded(
                child: ProductListingView(
                  onScrollEnd: () {
                    filter.limit += ProductFilter.perPag;
                    loadProducts();
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
