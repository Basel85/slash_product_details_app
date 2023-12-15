import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class ImageSliderSmallItem extends StatelessWidget {
  const ImageSliderSmallItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35 * SizeConfig.horizontalBlock,
      height: 40 * SizeConfig.verticalBlock,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
