import 'package:auto_route/auto_route.dart';
import 'package:code_test/core/export.dart';
import 'package:code_test/core/utils/miscellaneous/spacing_utils.dart';
import 'package:code_test/features/cart/presentation/widget/cart_quantity_button.dart';
import 'package:code_test/features/cart/presentation/widget/price_total_and_action_button_view.dart';
import 'package:code_test/features/product/data/model/product.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:styled_widget/styled_widget.dart';

///This widget is used to show bottom sheet where user can add quantity of product
///and add to cart
class AddToCartBottomSheetView extends StatefulWidget {
  final Product product;
  const AddToCartBottomSheetView({super.key, required this.product});

  @override
  State<AddToCartBottomSheetView> createState() =>
      _AddToCartBottomSheetViewState();
}

class _AddToCartBottomSheetViewState extends State<AddToCartBottomSheetView> {
  int qunatity = 1;
  final TextEditingController _quantityController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _quantityController.text = qunatity.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10))),
      child: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Add to cart",
                        style: Theme.of(context).textTheme.titleLarge),
                    IconButton(
                        onPressed: () {
                          context.popRoute();
                        },
                        icon: const Icon(Icons.close,
                            color: AppColors.blackColor))
                  ],
                ),
                Text(
                  'Quantity',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextField(
                  controller: _quantityController,
                  maxLength: 2,
                  onChanged: (value) {
                    setState(() {
                      qunatity = int.parse(value.isEmpty ? '0' : value);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter total quantity (Eg: 3)',
                    hintStyle: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: AppColors.lightText),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.blackColor),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.blackColor, width: 2.0),
                    ),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CartQuantityButton(
                            action: CartQuantityAction.remove,
                            quantity: qunatity,
                            onUpdate: (q) {
                              setState(() {
                                qunatity = q;
                                _quantityController.text = q.toString();
                              });
                            }),
                        horizontalSpacing(space: 15),
                        CartQuantityButton(
                            action: CartQuantityAction.add,
                            quantity: qunatity,
                            onUpdate: (q) {
                              setState(() {
                                qunatity = q;
                                _quantityController.text = q.toString();
                              });
                            }),
                      ],
                    ),
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.blackColor),
                    ),
                  ),
                ),
              ],
            ).padding(horizontal: 20, top: 20),
            PriceTotalAndActionButtonView(
              buttonText: "Add To Cart",
              title: "Total Price",
              subTitle: "\$${widget.product.price * qunatity}",
              onButtonPressed: () {
                if (qunatity == 0) {
                  EasyLoading.showError('Can\'t add anything to cart!');
                  return;
                }
                context.popRoute(qunatity);
              },
            ),
          ],
        ),
      ),
    );
  }
}
