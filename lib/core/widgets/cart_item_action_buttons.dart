import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/home/domain/entites/cart_item_entity.dart';
import 'package:fruit_hub/features/home/presentation/cubit/cart_cubit.dart';
import 'package:fruit_hub/features/home/presentation/cubit/cart_item_cubit/cart_item_cubit.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({super.key,required this.cartItemEntity});
 final CartItemEntity cartItemEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartItemActionButton(
          iconColor: Colors.white,
          icon: Icons.add,
          color: AppColors.primaryColor,
          onPressed: () {
            cartItemEntity.increaseCount();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);
          },
        ),
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            cartItemEntity.count.toString(),
            textAlign: TextAlign.center,
            style: TextStyles.bold16,
          ),
        ),
        CartItemActionButton(

          iconColor: Colors.grey,
          icon: Icons.remove,
          color: const Color(0xFFF3F5F7),
          onPressed: () {
            cartItemEntity.decreaseCount();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);
          },
        )
      ],
    );
  }
}

class CartItemActionButton extends StatelessWidget {
  const CartItemActionButton(
      {super.key,
      required this.icon,
      required this.color,
      required this.onPressed,
      required this.iconColor});

  final IconData icon;
  final Color iconColor;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 24,
        height: 24,
        padding: const EdgeInsets.all(
          2,
        ),
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: FittedBox(
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
