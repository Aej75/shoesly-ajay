import 'package:code_test/core/constants/app_colors.dart';
import 'package:code_test/core/enum/product_sort.dart';
import 'package:code_test/core/widgets/app_outline_box.dart';
import 'package:flutter/material.dart';

class ProductSortByFilterView extends StatelessWidget {
  final ProductSort? sortBy;
  final void Function(ProductSort sort) onSelected;
  const ProductSortByFilterView(
      {super.key, required this.onSelected, this.sortBy});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sory By",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: ProductSort.values.map((e) {
              final selected = sortBy == e;
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.white,
                      surfaceTintColor: Colors.white,
                      foregroundColor: Colors.white,
                      elevation: 0),
                  onPressed: () {
                    onSelected(e);
                  },
                  child: AppOutlinedBox(
                      color: selected ? AppColors.blackColor : null,
                      child: Center(
                        child: Text(
                          e.text,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: selected ? Colors.white : null),
                        ),
                      )),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
