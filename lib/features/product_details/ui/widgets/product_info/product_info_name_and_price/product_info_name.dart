import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class ProductInfoName extends StatelessWidget {
  final String productInfoName;
  const ProductInfoName({super.key, required this.productInfoName});

  @override
  Widget build(BuildContext context) {
    return Text(
        productInfoName,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18 * SizeConfig.textRatio,
          fontWeight: FontWeight.w600,
        ),
    );
  }
}
