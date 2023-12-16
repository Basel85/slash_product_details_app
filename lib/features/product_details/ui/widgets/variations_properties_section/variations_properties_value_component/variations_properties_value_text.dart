import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/app_colors/app_colors.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class VariationsPropertiesValueText extends StatelessWidget {
  final String variationsPropertyValue;
  final bool isSelected;
  const VariationsPropertiesValueText(
      {super.key, required this.variationsPropertyValue, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Text(
      variationsPropertyValue,
      style: TextStyle(
        color: isSelected?AppColors.primaryColor:Colors.white,
        fontSize: 18 * SizeConfig.textRatio,
      ),
    );
  }
}
