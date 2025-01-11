import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/cubit/products_cubit.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/helper_functions/get_dummy_products.dart';
import '../../../../../core/widgets/custom_error_text_widget.dart';
import 'best_selling_grid_view.dart';

class BestSellingGridViewBlocBuilder extends StatelessWidget {
  const BestSellingGridViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
         if(state is ProductsFailure){
          return Center(child: CustomErrorTextWidget(errorMessage: state.errorMessage,),);
        }else if(state is ProductsSuccess){
           return  BestSellingGridView(products: state.products,);
        }
        else{
          return  Skeletonizer.sliver(child: BestSellingGridView(products: getDummyProducts(),));
        }


      },
    );
  }
}

