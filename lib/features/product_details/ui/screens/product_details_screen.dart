import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slash_product_details_app/core/data/entities/product.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/core/widgets/custom_appbar/custom_appbar.dart';
import 'package:slash_product_details_app/core/widgets/custom_button/custom_button.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/description_component/description_component.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/image_slider/image_slider.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_colors_list/product_colors_list.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_info/product_info.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/quantity_component/quantity_component.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/variations_properties_section/variations_properties_section.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(title: "Product Details"),
        body: ListView(
          padding:
              EdgeInsets.symmetric(horizontal: 20 * SizeConfig.horizontalBlock),
          children: [
            Gap(50 * SizeConfig.verticalBlock),
            const ImageSlider(),
            Gap(10 * SizeConfig.verticalBlock),
            const ProductInfo(),
            Gap(30 * SizeConfig.verticalBlock),
            const ProductColorsList(),
            Gap(30 * SizeConfig.verticalBlock),
            const VariationsPropertiesSection(
              variationsPropertyName: "Select Size",
              variationsPropertiesValues: ["10X15", "15X20", "20X25"],
            ),
            Gap(30 * SizeConfig.verticalBlock),
            const VariationsPropertiesSection(
              variationsPropertyName: "Select Material",
              variationsPropertiesValues: ["Cotton"],
            ),
            Gap(30 * SizeConfig.verticalBlock),
            DescriptionComponent(
              descriptionText: product.description,
            ),
            Gap(30 * SizeConfig.verticalBlock),
            const QuantityComponent(),
            Gap(30 * SizeConfig.verticalBlock),
            CustomButton(onTap: () {}, buttonText: "Add to cart"),
            Gap(30 * SizeConfig.verticalBlock),
          ],
        ),
      ),
    );
  }
}
