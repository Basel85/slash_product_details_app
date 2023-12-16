import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class ProductCardPrice extends StatelessWidget {
  final num productCardPrice;
  const ProductCardPrice({super.key, required this.productCardPrice});

  @override
  Widget build(BuildContext context) {
    return Text(
      "EGP $productCardPrice",
      style: TextStyle(
        color: Colors.white,
        fontSize: 14*SizeConfig.textRatio,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
