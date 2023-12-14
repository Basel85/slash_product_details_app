import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class ProductInfoBrandName extends StatelessWidget {
  const ProductInfoBrandName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Nike",
      style: TextStyle(
        color: Colors.white,
        fontSize: 18 * SizeConfig.textRatio,
      ),
    );
  }
}
