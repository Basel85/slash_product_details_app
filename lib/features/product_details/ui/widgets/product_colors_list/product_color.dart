import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class ProductColor extends StatelessWidget {
  final Color color;
  const ProductColor({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 10 * SizeConfig.textRatio,
      backgroundColor: color,
    );
  }
}
