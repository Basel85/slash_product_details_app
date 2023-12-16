import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class ProductInfoBrandName extends StatelessWidget {
  final String productInfoBrandName;
  const ProductInfoBrandName({super.key, required this.productInfoBrandName});

  @override
  Widget build(BuildContext context) {
    return Text(productInfoBrandName,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18 * SizeConfig.textRatio,
        ),
        maxLines: 2);
  }
}
