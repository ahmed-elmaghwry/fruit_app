import 'package:flutter/material.dart';

class CustomErrorTextWidget extends StatelessWidget {
  final String errorMessage;

  const CustomErrorTextWidget({
    required this.errorMessage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(errorMessage);
  }
}
