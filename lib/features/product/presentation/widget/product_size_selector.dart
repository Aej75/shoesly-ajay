import 'package:code_test/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ProductSizeSelector extends StatelessWidget {
  final List<num> options;
  final num? selectedSize;
  final void Function(num) onSizeSelected;
  const ProductSizeSelector(
      {super.key,
      required this.options,
      required this.selectedSize,
      required this.onSizeSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Size",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: options
              .map((e) => Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.borderColor,
                        width: 1,
                      ),
                      color: selectedSize == e
                          ? AppColors.blackColor
                          : Colors.transparent,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          elevation: 0),
                      onPressed: () {
                        onSizeSelected(e);
                      },
                      child: Center(
                        child: Text(
                          "$e",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  fontSize: 14,
                                  color:
                                      selectedSize == e ? Colors.white : null),
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
