import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String productImageAssetPath;
  const RoundedImage({super.key, required this.productImageAssetPath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          productImageAssetPath,
          fit: BoxFit.cover,
        ));
  }
}
