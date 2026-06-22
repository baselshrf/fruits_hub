import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:e_commerce/core/widgets/notification_widget.dart';
import 'package:flutter/material.dart';

// ignore: strict_top_level_inference
AppBar buildAppBar(
  context, {
  required String title,
  bool showBackButton = true,
}) {
  return AppBar(
    backgroundColor: Colors.white,
    actions: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: NotificationWidget(),
      ),
    ],
    leading: Visibility(
      visible: showBackButton,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    ),
    centerTitle: true,
    title: Text(title, textAlign: TextAlign.center, style: TextStyles.bold19),
  );
}
