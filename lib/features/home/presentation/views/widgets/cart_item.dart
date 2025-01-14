import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/home/domain/entites/cart_item_entity.dart';
import 'package:fruit_hub/features/home/presentation/cubit/cart_item_cubit/cart_item_cubit.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/cart_item_action_buttons.dart';
import '../../../../../core/widgets/custom_network_image.dart';
import '../../cubit/cart_cubit.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItemEntity});

  final CartItemEntity cartItemEntity;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      buildWhen: (previous, current) {
        if (current is CartItemUpdated) {
          return current.cartItemEntity == cartItemEntity;
        }
        return false;
      },
      builder: (context, state) {
        log('we are building cart item');
        return IntrinsicHeight(
          child: Row(
            children: [
              Container(
                width: 73,
                height: 92,
                decoration: const BoxDecoration(color: Color(0xFFF3F5F7)),
                child: CustomNetworkImage(
                  imageUrl: cartItemEntity.productEntity.imageUrl,
                ),
              ),
              const SizedBox(
                width: 17,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          cartItemEntity.productEntity.name,
                          style: TextStyles.bold13,
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            context.read<CartCubit>().removeCartItem(
                                cartItemEntity);
                          },
                          child: SvgPicture.asset(
                            Assets.imagesTrash,
                          ),
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        CartItemActionButtons(cartItemEntity: cartItemEntity,),
                        const Spacer(),
                        Text(
                          '${cartItemEntity.productEntity.price} جنيه ',
                          style: TextStyles.bold16
                              .copyWith(color: AppColors.secondaryColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
