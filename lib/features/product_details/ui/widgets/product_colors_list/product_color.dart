import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class ProductColor extends StatelessWidget {
  const ProductColor({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 10 * SizeConfig.textRatio,
      backgroundColor: Colors.red,
    );
  }
}
