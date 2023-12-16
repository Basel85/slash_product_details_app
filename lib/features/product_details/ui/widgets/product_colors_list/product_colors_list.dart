import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/mixins/hex_color_to_color_converter.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_colors_list/product_color.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/scrollable_list_from_center/scrollable_list_from_center.dart';

class ProductColorsList extends StatelessWidget with HexColorToColorConverter {
  final List<String> colors;
  const ProductColorsList({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return ScrollableListFromCenter(
        children: List.generate(colors.length, (index) {
      Color color = convertHexColorToColor(colors[index]);
      if (index < colors.length-1) {
        return Padding(
          padding: EdgeInsets.only(right: 10.0 * SizeConfig.horizontalBlock),
          child: ProductColor(color: color,),
        );
      }
      return ProductColor(color: color,);
    }));
  }
}
