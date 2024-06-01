import 'package:flutter/material.dart';

class NoDataView extends StatelessWidget {
  final String? message;
  const NoDataView({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Text(message ?? "No Records Found",
        style: Theme.of(context).textTheme.titleLarge);
  }
}
