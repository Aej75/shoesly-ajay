import 'package:code_test/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppOutlinedBox extends StatelessWidget {
  final Widget child;
  final Color? color;
  const AppOutlinedBox({super.key, required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(width: 1, color: AppColors.borderColor)),
      child: child,
    );
  }
}
