import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/home/presentation/cubit/cart_cubit.dart';
import 'package:fruit_hub/features/home/presentation/views/products_view.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';

import 'cart_view.dart';
import 'home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const routeName = 'home_view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        onItemTapped: (index) {
          currentViewIndex = index;

          setState(() {});
        },
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (context) => CartCubit(),
          child: IndexedStack(
            index: currentViewIndex,
            children: const [
              HomeView(),
              ProductsView(),
              CartView(),
              ProductsView(),
            ],),
        ),
      ),
    );
  }

}