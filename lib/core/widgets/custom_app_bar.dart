import 'package:flutter/material.dart';


import '../utils/app_text_styles.dart';
import 'notification_widget.dart';

AppBar CustomAppBar(context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    actions: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),

      )
    ],
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyles.bold19,
    ),
  );
}