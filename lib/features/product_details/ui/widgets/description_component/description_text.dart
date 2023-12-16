import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class DescriptionText extends StatelessWidget {
  final String descriptionText;
  const DescriptionText({super.key, required this.descriptionText});

  @override
  Widget build(BuildContext context) {
    return Text(
      descriptionText,
      style:
          TextStyle(color: Colors.white, fontSize: 14 * SizeConfig.textRatio),
    );
  }
}
