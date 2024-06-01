import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishListButton extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;
  final double? height;
  final double? width;
  final double radius;
  final void Function()? onTap;
  final Gradient? gradient;
  final ImageProvider? image;
  final Alignment childAlignment;
  final EdgeInsets padding;
  final double? elevation;
  final List<BoxShadow>? boxShadow;
  final BoxBorder? border;
  final bool removePadding;
  final IconData? icon;

  final EdgeInsetsGeometry? margin;

  const WishListButton(
      {super.key,
      this.backgroundColor = Colors.white,
      this.padding = EdgeInsets.zero,
      required this.child,
      this.childAlignment = Alignment.center,
      this.radius = 8.0,
      this.height,
      this.width,
      this.gradient,
      this.onTap,
      this.border,
      this.margin,
      this.image,
      this.boxShadow,
      this.elevation = 0,
      this.removePadding = false,
      this.icon});

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.red,
          minimumSize: removePadding ? Size.zero : null,
          padding: removePadding ? EdgeInsets.zero : null,
        ),
        child: Container(
          alignment: childAlignment,
          width: width,
          height: height,
          margin: margin,
          padding: padding,
          decoration: BoxDecoration(
            gradient: gradient,
            color: backgroundColor,
            border: border,
            boxShadow: boxShadow,
            image: image != null
                ? DecorationImage(image: image!, fit: BoxFit.cover)
                : null,
            borderRadius: BorderRadius.circular(radius.r),
          ),
          child: child,
        ),
      );
}
