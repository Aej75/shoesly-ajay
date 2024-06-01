import 'package:auto_route/auto_route.dart';
import 'package:code_test/core/routes/app_router.gr.dart';
import 'package:code_test/core/widgets/app_outlined_text_button.dart';
import 'package:code_test/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../../core/export.dart';

///Widget will be shown when user add to cart event is success
class AddToCartSuccessBottomSheet extends StatelessWidget {
  const AddToCartSuccessBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 25),
      height: MediaQuery.sizeOf(context).height / 2.5,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: AppColors.blackColor)),
            child: const Center(
              child: Icon(
                Icons.check,
                color: Colors.grey,
                size: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Added to cart",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return state.whenOrNull(getCartSuccess: (carts) {
                    return Text("${carts.length} item total");
                  }) ??
                  const SizedBox();
            },
          ),
          const SizedBox(
            height: 06,
          ),
          Row(
            children: [
              Expanded(
                child: AppOutlinedTextButton(
                    text: "BACK EXPLORE",
                    color: Colors.white,
                    enableBorder: true,
                    textColor: Colors.black,
                    onPressed: () {
                      context.popRoute();
                    }).height(50),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: AppOutlinedTextButton(
                    text: "TO CART",
                    onPressed: () {
                      context.router.popAndPush(const CartPageRoute());
                    }).height(50),
              ),
            ],
          )
        ],
      ),
    );
  }
}
