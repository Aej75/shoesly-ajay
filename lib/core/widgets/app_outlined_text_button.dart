import 'package:code_test/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppOutlinedTextButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final VoidCallback onPressed;
  final bool? enableBorder;
  const AppOutlinedTextButton(
      {super.key,
      required this.text,
      this.color,
      this.textColor,
      this.enableBorder,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 40,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: enableBorder == true ? Border.all() : null,
          color: color ?? AppColors.blackColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: textColor ?? Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
