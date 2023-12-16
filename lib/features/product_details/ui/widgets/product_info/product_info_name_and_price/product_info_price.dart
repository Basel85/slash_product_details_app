import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class ProductInfoPrice extends StatelessWidget {
  final num productInfoPrice;
  const ProductInfoPrice({super.key, required this.productInfoPrice});

  @override
  Widget build(BuildContext context) {
    return Text("EGP $productInfoPrice",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15 * SizeConfig.textRatio,
          fontWeight: FontWeight.w600,
        ));
  }
}
