import 'package:code_test/core/constants/app_colors.dart';
import 'package:code_test/features/product/data/model/price_range.dart';
import 'package:flutter/material.dart';

class ProductPriceRangeFilterView extends StatelessWidget {
  final void Function(PriceRange range) onChanged;
  final PriceRange? priceRange;
  const ProductPriceRangeFilterView({
    super.key,
    required this.onChanged,
    required this.priceRange,
  });

  @override
  Widget build(BuildContext context) {
    final values = RangeValues(priceRange?.min ?? 10, priceRange?.max ?? 1750);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Price Range", style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(
          height: 8,
        ),
        RangeSlider(
            min: 10,
            max: 1750,
            divisions: 4,
            activeColor: AppColors.blackColor,
            overlayColor: MaterialStateProperty.all(AppColors.blackColor),
            labels: RangeLabels(
              "\$${values.start.toStringAsFixed(0)}",
              "\$${values.end.toStringAsFixed(0)}",
            ),
            values: values,
            onChanged: (range) {
              onChanged(PriceRange(min: range.start, max: range.end));
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
              children: [0, 200, 750, 1750]
                  .map((e) => Expanded(
                        flex: 1,
                        child: Align(
                          alignment: e == 1750 || e == 750
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          child: Text(
                            "\$$e",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(),
                          ),
                        ),
                      ))
                  .toList()),
        )
      ],
    );
  }
}
