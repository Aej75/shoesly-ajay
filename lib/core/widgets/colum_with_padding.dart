import 'package:flutter/material.dart';

class ColumnEachChildPadding extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets? padding;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final List<int> ignorePaddingForIndex;
  final MainAxisSize mainAxisSize;

  const ColumnEachChildPadding(
      {super.key,
      required this.children,
      this.padding,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.mainAxisSize = MainAxisSize.max,
      this.ignorePaddingForIndex = const []});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: children.map((e) {
        final index = children.indexOf(e);
        if (ignorePaddingForIndex.contains(index)) {
          return e;
        }
        return Padding(
          padding: padding ?? const EdgeInsets.all(0),
          child: e,
        );
      }).toList(),
    );
  }
}
