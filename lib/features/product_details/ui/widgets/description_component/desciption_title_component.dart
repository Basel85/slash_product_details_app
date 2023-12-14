import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class DescriptionTitle extends StatelessWidget {
  const DescriptionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
        "Description",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18*SizeConfig.textRatio,
          fontWeight: FontWeight.w600,
        ),
      );
  }
}