import 'package:flutter/material.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_info/product_info_brand/product_info_brand.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_info/product_info_name_and_price/product_info_name_and_price.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ProductInfoNameAndPrice(),
        ProductInfoBrand(),
      ],
    );
  }
}
