import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class CustomIconButton extends StatelessWidget {
  final void Function() onTap;
  final IconData iconData;
  const CustomIconButton(
      {super.key, required this.onTap, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        iconData,
        color: Colors.white,
        size: 16 * SizeConfig.textRatio,
      ),
    );
  }
}
