import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Widget child;
  const AppCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff101010).withOpacity(0.05),
          borderRadius: BorderRadius.circular(20)),
      child: child,
    );
  }
}
