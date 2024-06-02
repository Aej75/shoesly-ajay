import 'package:flutter/material.dart';
import 'package:master_ui_collection/core/widgets/skeleton/master_skeleton.dart';
import 'package:styled_widget/styled_widget.dart';

class AppHorizontalShimemrItems extends StatelessWidget {
  const AppHorizontalShimemrItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      child: Row(
        children: List.generate(
            5,
            (index) => const MasterSkeleton(
                  height: 50,
                  width: 150,
                ).padding(right: 15)),
      ),
    );
  }
}
