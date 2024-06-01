import 'package:flutter/widgets.dart';

extension StringExtension on String {
  String capitalize() => '${this[0].toUpperCase()}${substring(1)}';
}

extension CapExtension on String {
  String get inCaps =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : '';

  String get allInCaps => toUpperCase();

  String capitalizeFirstofEach() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.inCaps)
      .join(' ');
}

extension FunctionExtension on Function {
  Function execute(BuildContext context, Function function) {
    FocusScope.of(context).unfocus();
    return function;
  }
}
