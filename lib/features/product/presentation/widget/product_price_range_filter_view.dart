import 'package:code_test/core/export.dart';
import 'package:code_test/core/utils/miscellaneous/spacing_utils.dart';
import 'package:code_test/features/product/data/model/price_range.dart';
import 'package:styled_widget/styled_widget.dart';

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
        Text("Price Range", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(
          height: 8,
        ),
        verticalSpacing(space: 10),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 5),
              rangeValueIndicatorShape:
                  const PaddleRangeSliderValueIndicatorShape(),
              trackHeight: 1),
          child: RangeSlider(
              min: 10,
              max: 1750,
              divisions: 3,
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
        ).padding(horizontal: 10),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [0, 590, 1170, 1750]
                        .map(
                          (e) => Text(
                            "\$$e",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(),
                          ),
                        )
                        .toList())
                .padding(horizontal: 20))
      ],
    ).padding(vertical: 10);
  }
}
