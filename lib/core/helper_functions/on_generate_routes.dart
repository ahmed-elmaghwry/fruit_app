import 'package:flutter/material.dart';


import '../../features/auth/presentation/views/signin_view.dart';
import '../../features/auth/presentation/views/signup_view.dart';
import '../../features/best_selling_fruits/presentation/views/best_selling_view.dart';
import '../../features/checkout/presentation/checkout_view.dart';
import '../../features/home/presentation/views/main_view.dart';
import '../../features/on_boarding/presentation/views/on_boarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (context) => const BestSellingView());
    case SigninView.routeName:
      return MaterialPageRoute(builder: (context) => const SigninView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => const MainView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case CheckoutView.routeName:
      return MaterialPageRoute(builder: (context) => const CheckoutView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
