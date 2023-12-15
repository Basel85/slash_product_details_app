import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class CustomAppBarTitle extends StatelessWidget {
  final String title;
  final double fontSize;
  const CustomAppBarTitle({super.key, required this.title, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize * SizeConfig.textRatio,
          fontWeight: FontWeight.w600,
        ),
      );
  }
}