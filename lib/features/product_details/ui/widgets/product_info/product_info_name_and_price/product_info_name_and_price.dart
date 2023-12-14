import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_info/product_info_name_and_price/product_info_name.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_info/product_info_name_and_price/product_info_price.dart';

class ProductInfoNameAndPrice extends StatelessWidget {
  const ProductInfoNameAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProductInfoName(),
        Gap(15 * SizeConfig.verticalBlock),
        const ProductInfoPrice(),
      ],
    );
  }
}
