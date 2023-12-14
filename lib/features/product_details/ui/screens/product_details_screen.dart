import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/core/widgets/appbar/custom_appbar.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/description_component/description_component.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_colors_list/product_colors_list.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_info/product_info.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/variations_properties_section/variations_properties_section.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(title: "Product Details"),
        body: ListView(
          padding:
              EdgeInsets.symmetric(horizontal: 20 * SizeConfig.horizontalBlock),
          children: [
            const ProductInfo(),
            Gap(20 * SizeConfig.verticalBlock),
            const ProductColorsList(),
            Gap(20 * SizeConfig.verticalBlock),
            const VariationsPropertiesSection(
              variationsPropertyName: "Select Size",
              variationsPropertiesValues: ["10X15", "15X20", "20X25"],
            ),
            Gap(20 * SizeConfig.verticalBlock),
            const VariationsPropertiesSection(
              variationsPropertyName: "Select Material",
              variationsPropertiesValues: ["Cotton"],
            ),
            Gap(20 * SizeConfig.verticalBlock),
            const DescriptionComponent()
          ],
        ),
      ),
    );
  }
}
