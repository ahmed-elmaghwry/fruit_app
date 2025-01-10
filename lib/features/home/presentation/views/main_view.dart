import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';

import 'home_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  static const routeName = 'main_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: SafeArea(child: HomeView()),
    );
  }
}
