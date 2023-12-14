import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class ProductInfoBrandLogo extends StatelessWidget {
  const ProductInfoBrandLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 23 * SizeConfig.textRatio,
    );
  }
}
