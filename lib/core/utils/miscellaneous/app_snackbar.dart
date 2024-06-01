import 'package:code_test/main.dart';
import 'package:flutter/material.dart';

void showSnackbar(String message) {
  snackbarMessanger.currentState!
      .showSnackBar(SnackBar(content: Text(message)));
}

void hideSnackbar() {
  snackbarMessanger.currentState!.hideCurrentSnackBar();
}
