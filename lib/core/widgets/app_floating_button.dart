import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppFloatingButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double elevation;
  final IconData icon;
  final Color backgroundColor;
  final Color foregroundColor;
  final double height;
  final double width;

  const AppFloatingButton({
    super.key,
    this.onPressed,
    this.elevation = 2,
    required this.icon,
    this.backgroundColor = Colors.white,
    this.foregroundColor = colorBlack,
    this.height = 44,
    this.width = 44,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          width: width,
          height: height,
          child: FloatingActionButton(
            elevation: elevation,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            onPressed: onPressed ??
                () {
                  Navigator.pop(context);
                },
            child: Icon(icon),
          ),
        ),
      );
}
