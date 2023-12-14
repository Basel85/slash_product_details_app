import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_info/product_info_brand/product_info_brand_logo.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_info/product_info_brand/product_info_brand_name.dart';

class ProductInfoBrand extends StatelessWidget {
  const ProductInfoBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ProductInfoBrandLogo(),
        Gap(10 * SizeConfig.verticalBlock),
        const ProductInfoBrandName(),
      ],
    );
  }
}
