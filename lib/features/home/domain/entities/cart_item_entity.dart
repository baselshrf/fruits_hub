import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class CartItemEntity extends Equatable {
  final ProductEntity productEntity;
  int count;

  CartItemEntity({required this.productEntity, this.count = 0});

  num calculateTotalPrice() {
    return productEntity.price * count;
  }

  num calculateTotalWeight() {
    return productEntity.unitAmount * count;
  }

  void increasCount() {
    count++;
  }

  void decreasCount() {
    count--;
  }

  @override
  List<Object?> get props => [productEntity];
}
