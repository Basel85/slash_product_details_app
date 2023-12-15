import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class ImageSliderBigItem extends StatelessWidget {
  const ImageSliderBigItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180 * SizeConfig.horizontalBlock,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ));
  }
}
