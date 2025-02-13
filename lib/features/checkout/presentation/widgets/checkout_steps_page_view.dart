import 'package:flutter/material.dart';
import 'package:fruit_hub/features/checkout/presentation/widgets/payment_section.dart';
import 'package:fruit_hub/features/checkout/presentation/widgets/shipping_section.dart';

import 'address_input_section.dart';
import 'checkout_steps.dart';

 class CheckoutStepsPageView extends StatelessWidget {
  const CheckoutStepsPageView({
    super.key,
    required this.pageController,
  });
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: PageView.builder(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: getPages().length,
        itemBuilder: (context, index) {
          return getPages()[index];
        },
      ),
    );
  }
}


List<Widget> getPages() {
  return [
    const ShippingSection(),
    const AddressInputSection(),
    const PaymentSection(),
  ];
}
