import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/core/widgets/rounded_image/rounded_image.dart';

class ImageSliderSmallItem extends StatelessWidget {
  final String productImageAssetPath;
  const ImageSliderSmallItem({super.key, required this.productImageAssetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35 * SizeConfig.horizontalBlock,
      height: 40 * SizeConfig.verticalBlock,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: RoundedImage(productImageAssetPath:  productImageAssetPath),
    );
  }
}
