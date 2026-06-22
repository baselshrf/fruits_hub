import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/core/widgets/fruit_item.dart';
import 'package:flutter/material.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({super.key, required this.products});

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return FruitItem(productEntity: products[index]);
      },
    );
  }
}
