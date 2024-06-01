import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingPlaceHolder extends StatelessWidget {
  const LoadingPlaceHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CupertinoActivityIndicator(
      color: Colors.grey,
    ));
  }
}

Widget loadingView() {
  return const LoadingPlaceHolder();
}
