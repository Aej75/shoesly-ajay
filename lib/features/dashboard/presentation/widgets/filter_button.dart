import 'package:auto_route/auto_route.dart';
import 'package:code_test/core/constants/app_colors.dart';
import 'package:code_test/core/routes/app_router.gr.dart';
import 'package:code_test/core/widgets/app_svg.dart';
import 'package:code_test/core/widgets/dot_indicator.dart';
import 'package:code_test/features/product/data/model/product_filter.dart';
import 'package:code_test/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final ProductFilter appliedFilter;
  final void Function(ProductFilter filter) onFilterChanged;
  const FilterButton({
    super.key,
    required this.appliedFilter,
    required this.onFilterChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final filter = await context.router.push(ProductFilterPageRoute(
          filter: appliedFilter,
        ));
        if (filter is ProductFilter) {
          onFilterChanged(filter);
        }
      },
      child: Container(
        height: 50,
        width: 120,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: AppColors.blackColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                AppSVGImage(
                  asset: Assets.icons.filter,
                  color: Colors.white,
                ),
                if (appliedFilter.appliedCount > 0)
                  const Positioned(right: 0, child: DotIndicator())
              ],
            ),
            Text("FILTER",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
