import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/domain/entites/cart_item_entity.dart';

import 'cart_item.dart';
class CarItemsList extends StatelessWidget {
  const CarItemsList({super.key,required this.cartItems});
  final List<CartItemEntity>cartItems;
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
        separatorBuilder: (context, index) => const CustomDivider(),
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return   Padding(
            padding:const EdgeInsets.symmetric(horizontal: 16),
            child: CartItem(cartItemEntity:cartItems[index] ,),
          );
        });
  }
}
class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color(0xFFF1F1F5),
      height: 22,
    );
  }
}