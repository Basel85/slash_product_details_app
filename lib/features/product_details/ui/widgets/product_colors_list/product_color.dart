import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/app_colors/app_colors.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class ProductColor extends StatelessWidget {
  final Color color;
  final bool isNotLast;
  final bool isSelected;
  const ProductColor(
      {super.key,
      required this.color,
      required this.isNotLast,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            right: isNotLast ? 10.0 * SizeConfig.horizontalBlock : 0),
        width: 20 * SizeConfig.textRatio,
        height: 20 * SizeConfig.textRatio,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: Border.all(
            color: isSelected ? AppColors.secondaryColor : Colors.transparent,
          ),
        ));
  }
}
