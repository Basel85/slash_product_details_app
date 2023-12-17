import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slash_product_details_app/core/data/entities/product.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/home/ui/widgets/products_cards_grid/product_card/product_card_brand_image.dart';
import 'package:slash_product_details_app/features/home/ui/widgets/products_cards_grid/product_card/product_card_image.dart';
import 'package:slash_product_details_app/features/home/ui/widgets/products_cards_grid/product_card/product_card_name.dart';
import 'package:slash_product_details_app/features/home/ui/widgets/products_cards_grid/product_card/product_card_price.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductCardImage(productId: product.id,productCardImageAssetPath: product.variations[0].productVariantImages[0],),
          Gap(5 * SizeConfig.verticalBlock),
          Row(
            children: [
              Expanded(
                child: ProductCardName(
                  productCardName: product.name,
                ),
              ),
               ProductCardBrandImage(productCardBrandImageAssetPath: product.brandLogoUrl!,)
            ],
          ),
          Gap(11.0 * SizeConfig.verticalBlock),
          ProductCardPrice(productCardPrice: product.variations[0].price,)
        ],
      ),
    );
  }
}
