import 'package:code_test/core/enum/review_score_filter.dart';
import 'package:code_test/core/type/on_changed.dart';
import 'package:flutter/material.dart';

class ReviewFilterView extends StatelessWidget {
  final OnValueChanged<ReviewScoreFilter> filter;
  final ReviewScoreFilter selected;
  const ReviewFilterView(
      {super.key, required this.filter, required this.selected});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: ReviewScoreFilter.values
            .map((e) => TextButton(
                onPressed: () {
                  filter(e);
                },
                child: Text(
                  e.text,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: selected == e ? Colors.black : Colors.grey,
                      ),
                )))
            .toList(),
      ),
    );
  }
}
