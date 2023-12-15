import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class ProductCardName extends StatelessWidget {
  final String productCardName;
  const ProductCardName({super.key, required this.productCardName});

  @override
  Widget build(BuildContext context) {
    return Text(
      productCardName,
      style: TextStyle(
        color: Colors.white,
        fontSize: 12 * SizeConfig.textRatio,
        fontWeight: FontWeight.w500,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
