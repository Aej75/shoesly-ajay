import 'package:code_test/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

enum CartQuantityAction {
  add,
  remove,
}

class CartQuantityButton extends StatelessWidget {
  final CartQuantityAction action;
  final int quantity;
  final void Function(int quantity) onUpdate;
  const CartQuantityButton(
      {super.key,
      required this.action,
      required this.quantity,
      required this.onUpdate});

  @override
  Widget build(BuildContext context) {
    bool enabled = true;
    if (action == CartQuantityAction.remove && quantity == 1 || quantity == 0) {
      enabled = false;
    }
    final color = !enabled ? AppColors.borderColor : AppColors.blackColor;
    return InkWell(
      onTap: enabled
          ? () {
              onUpdate(action == CartQuantityAction.add
                  ? quantity + 1
                  : quantity - 1);
            }
          : null,
      child: Container(
        height: 27,
        width: 27,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 1,
              color: color,
            )),
        child: Center(
          child: Icon(
            action == CartQuantityAction.add ? Icons.add : Icons.remove,
            size: 10,
            color: color,
          ),
        ),
      ),
    );
  }
}
