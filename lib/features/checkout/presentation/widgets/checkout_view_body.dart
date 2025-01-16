import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';
import 'active_step_item.dart';
import 'checkout_steps.dart';
import 'checkout_steps_page_view.dart';
import 'in_active_step_item.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const CheckoutSteps(),
          Expanded(
            child: CheckoutStepsPageView(pageController: pageController),
          ),
          CustomButton(onPressed: () {
            pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn);
          }, text: 'التالي'),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
