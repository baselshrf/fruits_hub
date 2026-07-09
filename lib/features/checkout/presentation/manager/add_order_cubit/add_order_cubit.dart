import 'package:bloc/bloc.dart';
import 'package:e_commerce/core/repos/orders_repo/orders_repo.dart';
import 'package:e_commerce/features/checkout/domain/entities/order_entity.dart';
import 'package:equatable/equatable.dart';

part 'add_order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit(this.ordersRepo) : super(AddOrderInitial());
  final OrdersRepo ordersRepo;

  void addOrder({required OrderInputEntity order}) async {
    emit(AddOrderLoading());
    final result = await ordersRepo.addOrder(order: order);
    result.fold(
      (failure) => emit(AddOrderFailure(failure.message)),
      (success) => emit(AddOrderSuccess()),
    );
  }
}
