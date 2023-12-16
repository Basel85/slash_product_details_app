import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class VariationsPropertiesSectionName extends StatelessWidget {
  final String variationsPropertyName;
  const VariationsPropertiesSectionName({super.key, required this.variationsPropertyName});

  @override
  Widget build(BuildContext context) {
    return Text("Select $variationsPropertyName",
      style: TextStyle(
        color: Colors.white,
        fontSize: 18*SizeConfig.textRatio,
        fontWeight: FontWeight.w600,
      ),);
  }
}