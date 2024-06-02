import 'package:code_test/core/widgets/colum_with_padding.dart';
import 'package:flutter/material.dart';

class OrderSummaryPriceView extends StatelessWidget {
  final double subTotal;
  final double shippingFee;
  const OrderSummaryPriceView(
      {super.key, required this.subTotal, required this.shippingFee});

  @override
  Widget build(BuildContext context) {
    return ColumnEachChildPadding(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: const EdgeInsets.only(bottom: 20),
      children: [
        Text(
          "Payment Detail",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        _priceAndTitle("Sub Total", subTotal, context),
        _priceAndTitle("Shipping", shippingFee, context),
        const Divider(),
        _priceAndTitle("Total Order", shippingFee + subTotal, context),
      ],
    );
  }

  Widget _priceAndTitle(String title, num price, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleSmall),
        Text(
          "\$${price.toStringAsFixed(2)}",
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontSize: title == "Total Order" ? 20 : 16),
        )
      ],
    );
  }
}
