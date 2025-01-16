import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helper_functions/build_error_bar.dart';
import 'package:fruit_hub/features/home/presentation/cubit/cart_cubit.dart';

import 'main_view_body.dart';

class MainViewBodyListener extends StatelessWidget {
  const MainViewBodyListener({
    super.key,
    required this.currentViewIndex,
  });

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
//***********************************************************


      if(state is CartProductPriceless){{
        buildErrorBar(context, 'دا الغالي مش للبيع يا عم الحج  😂');
      }}




      //***********************************************************
        if(state is CartProductAdded){
         buildErrorBar(context, ' تم اضافة المنتج الى السلة');
        }

        else if(state is CartProductRemoved){
          buildErrorBar(context, ' تم حذف المنتج من السلة');
        }


      },
      child: MainViewBody(currentViewIndex: currentViewIndex),
    );
  }
}
