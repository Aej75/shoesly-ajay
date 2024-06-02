import 'package:cached_network_image/cached_network_image.dart';
import 'package:code_test/core/constants/app_colors.dart';
import 'package:code_test/core/utils/miscellaneous/spacing_utils.dart';
import 'package:code_test/features/brand/data/model/brand.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

enum ViewType { textType, circularType }

class SingleBrandView extends StatelessWidget {
  final Brand brand;

  /// brand will be selected when user tap on it
  final bool selected;
  final VoidCallback onPressed;

  ///View type can be textType or circaulaType
  ///textType will show brand name
  ///circularType will show brand logo
  final ViewType type;
  const SingleBrandView(
      {super.key,
      required this.brand,
      required this.selected,
      required this.onPressed,
      this.type = ViewType.textType});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: type == ViewType.circularType
            ? _circularView(context)
            : Text(
                brand.name,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: selected ? Colors.black : Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
      ),
    );
  }

  Widget _circularView(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.borderColor,
                    width: 1,
                  )),
              child: Center(
                child: CachedNetworkImage(
                  imageUrl: brand.logo,
                  // ignore: deprecated_member_use
                  color: Colors.grey,
                  fit: BoxFit.fitWidth,
                ).padding(all: 5),
              ),
            ),
            if (selected)
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.blackColor),
                  child: const Center(
                    child: Icon(
                      Icons.check,
                      size: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
          ],
        ),
        verticalSpacing(space: 5),
        Text(
          brand.name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          "${brand.totalProducts} Items",
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}
