import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/home/presentation/cubit/cart_cubit.dart';
import 'package:fruit_hub/features/home/presentation/cubit/cart_item_cubit/cart_item_cubit.dart';
import '../../../../../constants.dart';
import '../../../../../core/widgets/build_app_bar.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'cart_header.dart';
import 'cart_item_list.dart';
import 'custom_cart_button.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});




  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(
                    height: kTopPaddding,
                  ),
                  buildAppBar(
                    context,
                    title: 'السلة',
                    showNotification: false,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CartHeader(),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
             SliverToBoxAdapter(
              child:context.read<CartCubit>().cartEntity.cartEntity.isEmpty?const SizedBox() :const CustomDivider(),
            ),
              CarItemsList(
              cartItems: context.read<CartCubit>().cartEntity.cartEntity,
            ),
            SliverToBoxAdapter(
              child:context.read<CartCubit>().cartEntity.cartEntity.isEmpty?const SizedBox() :const CustomDivider(),
            ),
          ],
        ),
        Visibility(
          visible: context.watch<CartCubit>().cartEntity.calculateTotalPrice()>0,
          child: Positioned(
            left: 16,
            right: 16,
            bottom: MediaQuery.sizeOf(context).height * .07,
            child:const CustomCartButton(),
          ),
        )
      ],
    );
  }
}

