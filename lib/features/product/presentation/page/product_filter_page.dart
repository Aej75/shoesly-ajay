import 'package:auto_route/auto_route.dart';
import 'package:code_test/core/constants/app_colors.dart';
import 'package:code_test/core/widgets/base_view.dart';
import 'package:code_test/core/widgets/colum_with_padding.dart';
import 'package:code_test/features/product/data/model/product_filter.dart';
import 'package:code_test/features/product/presentation/page/app_outlined_button.dart';
import 'package:code_test/features/product/presentation/widget/product_brand_filter_view.dart';
import 'package:code_test/features/product/presentation/widget/product_color_filter_view.dart';
import 'package:code_test/features/product/presentation/widget/product_gender_filter_view.dart';
import 'package:code_test/features/product/presentation/widget/product_price_range_filter_view.dart';
import 'package:code_test/features/product/presentation/widget/product_sort_by_filter_view.dart';
import 'package:flutter/material.dart';

class ProductFilterPage extends StatefulWidget {
  final ProductFilter? filter;
  const ProductFilterPage({super.key, required this.filter});

  @override
  State<ProductFilterPage> createState() => _ProductFilterPageState();
}

class _ProductFilterPageState extends State<ProductFilterPage> {
  late ProductFilter filter;
  @override
  void initState() {
    filter = widget.filter ?? ProductFilter(limit: ProductFilter.perPag);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
        titleText: "Filter",
        centerTitle: true,
        titleStyle: Theme.of(context).textTheme.headlineMedium,
        body: SingleChildScrollView(
          child: ColumnEachChildPadding(
            padding: const EdgeInsets.only(bottom: 8),
            children: [
              ProductBrandFilterView(
                selectedBrand: filter.brand,
                onSelected: (brand) {
                  setState(() {
                    filter.brand = brand;
                  });
                },
              ),
              ProductPriceRangeFilterView(
                priceRange: filter.range,
                onChanged: (r) {
                  setState(() {
                    filter.range = r;
                  });
                },
              ),
              ProductSortByFilterView(
                sortBy: filter.sortBy,
                onSelected: (sort) {
                  setState(() {
                    filter.sortBy = sort;
                  });
                },
              ),
              ProductGenderFilterView(
                gender: filter.gender,
                onSelected: (gen) {
                  setState(() {
                    filter.gender = gen;
                  });
                },
              ),
              ProductColorFilterView(
                color: filter.color,
                onSelected: (c) {
                  setState(() {
                    filter.color = c;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: AppOutlinedButton(
                      child:
                          Center(child: Text("RESET(${filter.appliedCount})")),
                      onPressed: () {
                        setState(() {
                          filter = ProductFilter(limit: ProductFilter.perPag);
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: AppOutlinedButton(
                      backGroundColor: AppColors.blackColor,
                      child: Center(
                          child: Text(
                        "APPLY",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.white),
                      )),
                      onPressed: () {
                        context.router.pop(filter);
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
