import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/app_colors/app_colors.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class ButtonText extends StatelessWidget {
  final String buttonText;
  const ButtonText({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Text(
      buttonText,
      style: TextStyle(
        color: AppColors.primaryColor,
        fontSize: 18 * SizeConfig.textRatio,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
