import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/core/widgets/rounded_image/rounded_image.dart';

class ImageSliderBigItem extends StatelessWidget {
  final String productImageAssetPath;
  const ImageSliderBigItem({super.key, required this.productImageAssetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180 * SizeConfig.horizontalBlock,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: RoundedImage(productImageAssetPath: productImageAssetPath)
        );
  }
}
