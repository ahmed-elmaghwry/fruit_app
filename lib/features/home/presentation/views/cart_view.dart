import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/widgets/build_app_bar.dart';
import 'package:fruit_hub/features/home/presentation/cubit/cart_item_cubit/cart_item_cubit.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (context) => CartItemCubit(),
      child:const CartViewBody(),
    );
  }
}