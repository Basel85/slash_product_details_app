import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/constants/screen_navigation_paths.dart';
import 'package:slash_product_details_app/core/data/entities/product.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/home/ui/widgets/products_cards_grid/product_card/product_card.dart';

class ProductsCardsGrid extends StatelessWidget {
  final List<Product> products;
  const ProductsCardsGrid({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
          padding: EdgeInsets.symmetric(
              horizontal: 10 * SizeConfig.horizontalBlock,
              vertical: 10 * SizeConfig.verticalBlock),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150 * SizeConfig.horizontalBlock,
              childAspectRatio: 0.65,
              crossAxisSpacing: 10 * SizeConfig.horizontalBlock,
              mainAxisSpacing: 10 * SizeConfig.verticalBlock),
          itemCount: products.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, productDetailsScreenPath,
                    arguments: products[index]);
              },
              child: ProductCard(product: products[index],)),
        );
  }
}