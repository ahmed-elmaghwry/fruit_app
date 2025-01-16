import 'package:flutter/material.dart';
import 'package:fruit_hub/features/checkout/presentation/widgets/step_item.dart';

import 'in_active_step_item.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(getSteps().length, (index) {
          return StepItem(
            isActive: false,
            index: (index+1).toString(),
            text: getSteps()[index],
          );
        }),
      ),
    );
  }


}
List<String> getSteps() {
  return [
    'الشحن',
    'العنوان',
    'الدفع',

  ];
}