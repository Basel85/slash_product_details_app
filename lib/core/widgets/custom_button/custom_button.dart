import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/app_colors/app_colors.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/core/widgets/custom_button/button_text.dart';

class CustomButton extends StatelessWidget {
  final void Function() onTap;
  final String buttonText;
  const CustomButton({super.key, required this.onTap, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 5 * SizeConfig.verticalBlock),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: AppColors.secondaryColor,
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey, blurRadius: 5.0, offset: Offset(0.0, 1))
            ]),
        child: ButtonText(
          buttonText: buttonText,
        ),
      ),
    );
  }
}
