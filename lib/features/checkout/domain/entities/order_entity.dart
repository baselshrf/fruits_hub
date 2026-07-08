import 'package:e_commerce/features/checkout/domain/entities/shipping_address_entity.dart';
import 'package:e_commerce/features/home/domain/entities/cart_entity.dart';

class OrderEntity {
  final CartEntity cartEntity;
  bool? payWithCash;
  ShippingAddressEntity? shippingAddressEntity;
  OrderEntity(
    this.cartEntity, {
    this.payWithCash,
    required this.shippingAddressEntity,
  });
}
