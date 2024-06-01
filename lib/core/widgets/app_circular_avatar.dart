import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class AppCircularAvatarImage extends StatelessWidget {
  final ImageProvider? imageProvider;
  final double radius;
  final VoidCallback? onTapCallback;
  final Widget? child;
  final Color? backgroundColor;

  const AppCircularAvatarImage(
      {super.key,
      this.imageProvider,
      this.radius = 16,
      this.onTapCallback,
      this.child,
      this.backgroundColor = Colors.white});

  @override
  Widget build(BuildContext context) => CircleAvatar(
          backgroundImage: imageProvider,
          backgroundColor: backgroundColor,
          radius: radius,
          child: child)
      .gestures(onTap: onTapCallback);
}
