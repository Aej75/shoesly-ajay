import 'package:code_test/core/utils/miscellaneous/spacing_utils.dart';
import 'package:code_test/core/widgets/colum_with_padding.dart';
import 'package:code_test/features/cart/data/model/cart_item.dart';
import 'package:flutter/material.dart';

class OrderSummaryCartItemView extends StatelessWidget {
  final List<CartItem> items;
  const OrderSummaryCartItemView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ColumnEachChildPadding(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Order Detail",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        verticalSpacing(space: 15),
        Column(
          children: items
              .map((cart) => ColumnEachChildPadding(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    padding: const EdgeInsets.only(bottom: 14),
                    children: [
                      Text(
                        cart.product.name,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${cart.product.brand}. ${cart.productColor?.toString()}. ${cart.size} Qty ${cart.quantity}",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          Text(
                            "\$${cart.product.price * cart.quantity}",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ))
              .toList(),
        ),
      ],
    );
  }
}
