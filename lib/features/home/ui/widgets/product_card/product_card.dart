import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/home/ui/widgets/product_card/product_card_brand_image.dart';
import 'package:slash_product_details_app/features/home/ui/widgets/product_card/product_card_image.dart';
import 'package:slash_product_details_app/features/home/ui/widgets/product_card/product_card_name.dart';
import 'package:slash_product_details_app/features/home/ui/widgets/product_card/product_card_price.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProductCardImage(),
          Gap(5 * SizeConfig.verticalBlock),
          const Row(
            children: [
              Expanded(
                child: ProductCardName(
                  productCardName:
                      "Product Namejggutguuitgtuigguguguygyigiygui",
                ),
              ),
              ProductCardBrandImage()
            ],
          ),
          Gap(11.0 * SizeConfig.verticalBlock),
          const ProductCardPrice(productCardPrice: 2000)
        ],
      ),
    );
  }
}
