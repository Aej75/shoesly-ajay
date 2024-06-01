import 'package:code_test/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final Color? color;
  final double radius;

  const DotIndicator({super.key, this.color, this.radius = 4});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2,
      width: radius * 2,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: color ?? AppColors.waringColor),
    );
  }
}
