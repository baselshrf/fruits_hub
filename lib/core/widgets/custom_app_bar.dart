import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

// ignore: strict_top_level_inference
AppBar buildAppBar(context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Icon(Icons.arrow_back_ios_new),
    ),
    centerTitle: true,
    title: Text(title, textAlign: TextAlign.center, style: TextStyles.bold19),
  );
}
