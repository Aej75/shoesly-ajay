import 'package:auto_route/auto_route.dart';
import 'package:code_test/core/extension/cart_extension.dart';
import 'package:code_test/core/routes/app_router.gr.dart';
import 'package:code_test/core/widgets/app_list_view.dart';
import 'package:code_test/core/widgets/base_view.dart';
import 'package:code_test/core/widgets/error_view.dart';
import 'package:code_test/core/widgets/loading_place_holder.dart';
import 'package:code_test/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:code_test/features/cart/presentation/widget/price_total_and_action_button_view.dart';
import 'package:code_test/features/cart/presentation/widget/single_cart_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        titleText: "Cart",
        titleStyle: Theme.of(context).textTheme.headlineMedium,
        centerTitle: true,
        bottomNavigationBar: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            return state.whenOrNull(getCartSuccess: (carts) {
                  if (carts.isEmpty) {
                    return const SizedBox();
                  }
                  return PriceTotalAndActionButtonView(
                    buttonText: "CHECK OUT",
                    title: "Grand Total",
                    subTitle: "\$${carts.total.toStringAsFixed(2)}",
                    onButtonPressed: () {
                      context.router.push(OrderSummaryPageRoute(carts: carts));
                    },
                  );
                }) ??
                const SizedBox();
          },
        ),
        body: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            return state.when(
                cartInitial: loadingView,
                loading: loadingView,
                addToCartSuccess: loadingView,
                addToCartState: loadingView,
                failure: errorView,
                getCartSuccess: (carts) {
                  return AppListView(
                    itemCount: carts.length,
                    noDatatext: "Cart is empty",
                    itemBuilder: (context, index) {
                      final cart = carts[index];
                      return SingleCartItemView(
                        cartItem: cart,
                        onDelete: () {
                          context
                              .read<CartBloc>()
                              .add(CartEvent.deleteCartItem(cart.id!));
                        },
                        onUpdate: (quantity) {
                          context.read<CartBloc>().add(
                              CartEvent.updateCartItem(cart.id!, quantity));
                        },
                      );
                    },
                  );
                });
          },
        ));
  }
}
