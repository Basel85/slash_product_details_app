import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_colors_list/product_color.dart';

class ProductColorsList extends StatelessWidget {
  const ProductColorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(20, (index) {
            if (index < 19) {
              return Padding(
                padding:
                    EdgeInsets.only(right: 10.0 * SizeConfig.horizontalBlock),
                child: const ProductColor(),
              );
            }
            return const ProductColor();
          })),
    );
  }
}
