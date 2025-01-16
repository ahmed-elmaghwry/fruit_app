import 'package:flutter/material.dart';

import 'active_step_item.dart';
import 'checkout_steps.dart';
import 'in_active_step_item.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:   EdgeInsets.symmetric(horizontal: 16.0),
      child:   Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CheckoutSteps(),

        ],
      ),
    );
  }
}
