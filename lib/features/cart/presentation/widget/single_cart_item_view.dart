import 'package:code_test/core/export.dart';
import 'package:code_test/core/utils/miscellaneous/spacing_utils.dart';
import 'package:code_test/core/widgets/app_card.dart';
import 'package:code_test/core/widgets/app_netork_image.dart';
import 'package:code_test/core/widgets/colum_with_padding.dart';
import 'package:code_test/features/cart/data/model/cart_item.dart';
import 'package:code_test/features/cart/presentation/widget/cart_quantity_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SingleCartItemView extends StatelessWidget {
  final CartItem cartItem;

  ///onDelete will be call when user swipe to delete
  final VoidCallback onDelete;
  final void Function(int quantity) onUpdate;
  const SingleCartItemView(
      {super.key,
      required this.cartItem,
      required this.onDelete,
      required this.onUpdate});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ObjectKey(cartItem.id),
      endActionPane: ActionPane(
        extentRatio: 0.3,
        motion: const ScrollMotion(),
        children: [
          Expanded(
            child: InkWell(
              onTap: onDelete,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12)),
                child: Container(
                  height: 100,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  color: AppColors.waringColor,
                  child: const Icon(
                    CupertinoIcons.delete,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: AppCard(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppCachedNetworkImageView(
                  url: cartItem.product.thumbnail,
                ),
              )),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: ColumnEachChildPadding(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              padding: const EdgeInsets.only(bottom: 06),
              children: [
                Text(
                  cartItem.product.name,
                ),
                Text(
                  "${cartItem.product.brand}. ${cartItem.productColor?.toString()}. ${cartItem.size}",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$${cartItem.product.price * cartItem.quantity}",
                        style: Theme.of(context).textTheme.titleMedium),
                    Row(
                      children: [
                        _buildQuantityButton(isAddAction: false),
                        horizontalSpacing(space: 15),
                        Text(
                          "${cartItem.quantity}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        horizontalSpacing(space: 15),
                        _buildQuantityButton(isAddAction: true)
                      ],
                    ),
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget _buildQuantityButton({required bool isAddAction}) {
    return CartQuantityButton(
        action:
            isAddAction ? CartQuantityAction.add : CartQuantityAction.remove,
        quantity: cartItem.quantity,
        onUpdate: onUpdate);
  }
}
