import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/data/entities/product.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_info/product_info_brand/product_info_brand.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_info/product_info_name_and_price/product_info_name_and_price.dart';

class ProductInfo extends StatelessWidget {
  final Product product;
  const ProductInfo({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: ProductInfoNameAndPrice(
            productInfoName: product.name,
            productInfoPrice: product.variations[0].price,
          ),
        ),
        ProductInfoBrand(
          productInfoBrandImageAssetPath: product.brandLogoUrl!,
          productInfoBrandName: product.brandName!,
        ),
      ],
    );
  }
}
