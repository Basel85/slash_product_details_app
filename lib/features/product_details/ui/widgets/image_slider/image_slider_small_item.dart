import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/app_colors/app_colors.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/core/widgets/rounded_image/rounded_image.dart';

class ImageSliderSmallItem extends StatelessWidget {
  final String productImageAssetPath;
  final bool isNotLastItem;
  final bool isSelected;
  const ImageSliderSmallItem(
      {super.key,
      required this.productImageAssetPath,
      required this.isNotLastItem,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35 * SizeConfig.horizontalBlock,
      height: 40 * SizeConfig.verticalBlock,
      margin: EdgeInsets.only(
          right: isNotLastItem ? 10 * SizeConfig.horizontalBlock : 0),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: isSelected ? AppColors.secondaryColor : Colors.transparent,
        ),
      ),
      child: RoundedImage(productImageAssetPath: productImageAssetPath),
    );
  }
}
