import 'package:bloc/bloc.dart';
import 'package:e_commerce/features/home/domain/entities/cart_item_entity.dart';
import 'package:equatable/equatable.dart';

part 'cart_item_state.dart';

class CartItemCubit extends Cubit<CartItemState> {
  CartItemCubit() : super(CartItemInitial());

  void updateCartItem(CartItemEntity carItem) {
    emit(CartItemUpdated(carItem));
  }
}
