import 'package:flutter/material.dart';
import 'package:fruit_hub/features/checkout/presentation/widgets/checkout_view_body.dart';

import '../../../core/widgets/build_app_bar.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  static const routeName = 'checkout';

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar:buildAppBar(context, title: 'الشحن',showNotification: false),
      body:const CheckoutViewBody(),
    );
  }
}
