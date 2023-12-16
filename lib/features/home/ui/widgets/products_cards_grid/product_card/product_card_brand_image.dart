import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class ProductCardBrandImage extends StatelessWidget {
  final String productCardBrandImageAssetPath;
  const ProductCardBrandImage({super.key, required this.productCardBrandImageAssetPath});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 11 * SizeConfig.textRatio,
      backgroundImage: AssetImage(productCardBrandImageAssetPath),
    );
  }
}
