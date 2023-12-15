import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class QuantityName extends StatelessWidget {
  const QuantityName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Quantity',
      style: TextStyle(
        fontSize: 18 * SizeConfig.textRatio,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }
}
