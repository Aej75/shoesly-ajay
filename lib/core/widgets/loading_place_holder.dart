import 'package:code_test/core/widgets/app_list_view.dart';
import 'package:code_test/features/cart/presentation/widget/single_cart_item_view.dart';
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

Widget loadingListView() {
  return AppListView(
    itemCount: 4,
    itemBuilder: (context, index) {
      return SingleCartItemView.shimmer(context);
    },
  );
}
