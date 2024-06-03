import 'package:auto_route/auto_route.dart';
import 'package:code_test/core/export.dart';
import 'package:code_test/core/extension/cart_extension.dart';
import 'package:code_test/core/routes/app_router.gr.dart';
import 'package:code_test/core/utils/miscellaneous/spacing_utils.dart';
import 'package:code_test/core/utils/notification/notification_service.dart';
import 'package:code_test/core/widgets/base_view.dart';
import 'package:code_test/core/widgets/colum_with_padding.dart';
import 'package:code_test/features/cart/data/model/cart_item.dart';
import 'package:code_test/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:code_test/features/cart/presentation/widget/price_total_and_action_button_view.dart';
import 'package:code_test/features/order/data/model/add_order_request.dart';
import 'package:code_test/features/order/presentation/bloc/order_bloc.dart';
import 'package:code_test/features/order/presentation/widget/order_summary_cart_item_view.dart';
import 'package:code_test/features/order/presentation/widget/order_summary_price_view.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:styled_widget/styled_widget.dart';

class OrderSummaryPage extends StatefulWidget {
  final List<CartItem> carts;
  const OrderSummaryPage({super.key, required this.carts});

  @override
  State<OrderSummaryPage> createState() => _OrderSummaryPageState();
}

class _OrderSummaryPageState extends State<OrderSummaryPage> {
  final OrderBloc _orderBloc = getIt<OrderBloc>();
  final double shippingFee = 20;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _orderBloc,
      child: BlocListener<OrderBloc, OrderState>(
        listener: (context, state) {
          state.when(
              initial: () {},
              loading: () {
                EasyLoading.show(status: "Placing your order");
              },
              success: () async {
                await PushNotificationService.showLocalNotification(
                    message: 'Your order has been placed successfully!');

                Future.delayed(const Duration(seconds: 1), () {
                  context.read<CartBloc>().add(const CartEvent.getCart());
                  context.router.pushAndPopUntil(DashboardPageRoute(),
                      predicate: (f) => false);
                });
              },
              failure: EasyLoading.showError);
        },
        child: BaseView(
            titleText: "Order Summary",
            centerTitle: true,
            titleStyle: Theme.of(context).textTheme.headlineMedium,
            bottomNavigationBar: PriceTotalAndActionButtonView(
              title: "Grand Total",
              subTitle:
                  "\$${(widget.carts.total + shippingFee).toStringAsFixed(2)}",
              buttonText: "PAYMENT",
              onButtonPressed: () async {
                _orderBloc.add(
                  OrderEvent.addOrder(
                      order: AddOrderRequest(
                    items: widget.carts,
                    subTotal: widget.carts.total,
                    shippingFee: shippingFee,
                    shippingAddress:
                        ShippingAddress(address: "Banepa-13, Kavre, Nepal"),
                    total: widget.carts.total + shippingFee,
                    paymentMethod: PaymentMethod.cash,
                  )),
                );
              },
            ),
            body: SingleChildScrollView(
              child: ColumnEachChildPadding(
                crossAxisAlignment: CrossAxisAlignment.start,
                padding: const EdgeInsets.only(bottom: 10),
                ignorePaddingForIndex: const [2, 3],
                children: [
                  _titleView("Information"),
                  verticalSpacing(space: 5),
                  _buildTileAction(
                    title: "Payment Method",
                    subtitle: "Credit Card",
                  ),
                  const Divider().padding(vertical: 5),
                  _buildTileAction(
                    title: "Location",
                    subtitle: "Semarang, Indonesia",
                  ),
                  verticalSpacing(space: 10),
                  OrderSummaryCartItemView(
                    items: widget.carts,
                  ),
                  OrderSummaryPriceView(
                    subTotal: widget.carts.total,
                    shippingFee: shippingFee,
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget _titleView(String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }

  Widget _buildTileAction({required String title, required String subtitle}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            verticalSpacing(space: 5),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.titleSmall,
            )
          ],
        ),
        const Icon(
          Icons.chevron_right,
          color: Colors.grey,
          size: 15,
        )
      ],
    );
  }
}
