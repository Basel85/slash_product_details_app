import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class QuantityValue extends StatelessWidget {
  const QuantityValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '0',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16 * SizeConfig.textRatio,
        decoration: TextDecoration.underline,
        decorationColor: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
