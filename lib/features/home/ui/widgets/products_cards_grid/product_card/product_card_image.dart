import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class ProductCardImage extends StatelessWidget {
  final String productCardImageAssetPath;
  const ProductCardImage({super.key, required this.productCardImageAssetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150 * SizeConfig.horizontalBlock,
      height: 100 * SizeConfig.verticalBlock,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            productCardImageAssetPath,
            fit: BoxFit.cover,
          )),
    );
  }
}
