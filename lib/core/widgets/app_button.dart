import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_widget/styled_widget.dart';

enum ButtonWidth { large, small }

class AppButton extends StatelessWidget {
  final String? buttonText;
  final ButtonWidth buttonWidth;
  final EdgeInsets padding;
  final GestureTapCallback? onPressed;
  final Duration duration;
  final Widget? leadingWidget;
  final Color? backgroundColor;
  final OutlinedBorder outlinedBorder;
  final double fontSize;
  final Widget? child;

  const AppButton({
    super.key,
    this.buttonText,
    this.onPressed,
    this.buttonWidth = ButtonWidth.large,
    this.padding = const EdgeInsets.all(24),
    this.duration = const Duration(seconds: 5),
    this.leadingWidget,
    this.backgroundColor,
    this.outlinedBorder = const StadiumBorder(),
    this.fontSize = 17,
    this.child,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
      height: MediaQuery.of(context).size.height / 17,
      width: buttonWidth == ButtonWidth.small
          ? MediaQuery.of(context).size.width / 2
          : MediaQuery.of(context).size.width / 1.10,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor:
                backgroundColor ?? Theme.of(context).colorScheme.secondary,
            elevation: 0,
            shape: outlinedBorder),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            leadingWidget ?? const SizedBox(),
            if (buttonText != null) ...[
              Text(
                buttonText!,
                style: TextStyle(
                    // fontFamily: 'Source Sans Pro',
                    fontSize: fontSize.sp,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis),
              )
            ] else ...[
              child ?? const SizedBox(),
            ]
          ],
        ),
      )).center(heightFactor: 1.8);
}
