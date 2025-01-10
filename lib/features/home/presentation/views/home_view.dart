import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/cubit/products_cubit.dart';
import 'package:fruit_hub/core/repos/product_repo/products_repo.dart';
import 'package:fruit_hub/core/services/get_it_service.dart';
import 'package:fruit_hub/core/widgets/fruit_item.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/home_view_body.dart';

import '../../../../constants.dart';
import '../../../../core/widgets/search_text_field.dart';
import 'widgets/best_selling_grid_view.dart';
import 'widgets/best_selling_header.dart';
import 'widgets/custom_home_app_bar.dart';
import 'widgets/featured_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ProductsCubit(productsRepo: getIt.get<ProductsRepo>()),
        child: const HomeViewBody());
  }
}
