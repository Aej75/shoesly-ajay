import 'package:auto_route/auto_route.dart';
import 'package:code_test/core/export.dart';
import 'package:code_test/core/routes/app_router.gr.dart';
import 'package:code_test/core/widgets/dot_indicator.dart';
import 'package:code_test/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:code_test/gen/assets.gen.dart';
import 'package:flutter_svg/svg.dart';

class CartIconButton extends StatelessWidget {
  const CartIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          context.router.push(const CartPageRoute());
        },
        icon: Stack(
          children: [
            SvgPicture.asset(Assets.icons.cart),
            Positioned(
              right: 02,
              top: 03,
              child:
                  BlocBuilder<CartBloc, CartState>(builder: (context, state) {
                return state.whenOrNull(getCartSuccess: (carts) {
                      if (carts.isEmpty) return null;
                      return const DotIndicator();
                    }) ??
                    const SizedBox();
              }),
            )
          ],
        ));
  }
}
