import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class ProductInfoPrice extends StatelessWidget {
  const ProductInfoPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("EGP 250",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15 * SizeConfig.textRatio,
          fontWeight: FontWeight.w600,
        ));
  }
}
