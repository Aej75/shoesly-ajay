import 'package:code_test/features/order/data/model/add_order_request.dart';
import 'package:code_test/features/order/data/repository/i_order_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part "order_event.dart";

part "order_state.dart";
part "order_bloc.freezed.dart";

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final IOrderRepository orderRepository;
  OrderBloc(this.orderRepository) : super(const OrderState.initial()) {
    on<OrderEvent>((event, emit) async {
      await event.when(addOrder: (order) async {
        emit(const OrderState.loading());
        final response = await orderRepository.addOrder(order: order);
        if (response.success) {
          emit(const OrderState.success());
        } else {
          emit(const OrderState.failure("Unable to add order"));
        }
      });
    });
  }
}
