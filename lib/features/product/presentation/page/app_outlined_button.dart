import 'package:code_test/core/constants/app_colors.dart';
import 'package:code_test/core/widgets/app_outline_box.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class AppOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget? child;
  final Color? backGroundColor;
  final double? height;
  final String? title;

  const AppOutlinedButton(
      {super.key,
      this.backGroundColor,
      this.height,
      this.child,
      required this.onPressed,
      this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0),
      onPressed: onPressed,
      child: SizedBox(
        height: height,
        child: AppOutlinedBox(
          color: backGroundColor,
          child: title != null
              ? Center(
                  child: Text(
                  title!,
                  style: Theme.of(context).textTheme.titleMedium,
                ).textColor(colorBlack))
              : child ?? const SizedBox(),
        ),
      ),
    );
  }
}
