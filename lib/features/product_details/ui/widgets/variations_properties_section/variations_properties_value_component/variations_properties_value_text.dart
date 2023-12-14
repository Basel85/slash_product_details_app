import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class VariationsPropertiesValueText extends StatelessWidget {
  final String variationsPropertyValue;
  const VariationsPropertiesValueText({super.key, required this.variationsPropertyValue});

  @override
  Widget build(BuildContext context) {
    return Text(
      variationsPropertyValue,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18*SizeConfig.textRatio,
      ),);
  }
}