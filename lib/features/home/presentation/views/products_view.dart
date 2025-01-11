
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/products_view_body.dart';

import '../../../../core/cubit/products_cubit.dart';
import '../../../../core/repos/product_repo/products_repo.dart';
import '../../../../core/services/get_it_service.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => ProductsCubit(
        productsRepo: getIt.get<ProductsRepo>(),
      ),
      child: const ProductsViewBody(),
    );
  }
}