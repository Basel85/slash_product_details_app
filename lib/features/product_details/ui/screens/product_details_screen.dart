import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slash_product_details_app/core/data/entities/product.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/core/widgets/custom_appbar/custom_appbar.dart';
import 'package:slash_product_details_app/core/widgets/custom_button/custom_button.dart';
import 'package:slash_product_details_app/core/mixins/variations_properties_values_getter.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/description_component/description_component.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/image_slider/image_slider.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_colors_list/product_colors_list.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_info/product_info.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/quantity_component/quantity_component.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/variations_properties_section/variations_properties_section.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Product product;
  const ProductDetailsScreen({super.key, required this.product});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen>
    with VariationsPropertiesValuesGetter {
  Map<String, List<String>> _variationsPropertiesValues = {};
  @override
  void initState() {
    _variationsPropertiesValues =
        getVariationsPropertiesValues(product: widget.product);
    super.initState();
  }

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
            ImageSlider(
              productImages: widget.product.variations[0].productVariantImages,
            ),
            Gap(10 * SizeConfig.verticalBlock),
            ProductInfo(
              product: widget.product,
            ),
            Gap(30 * SizeConfig.verticalBlock),
            if (widget.product.availableProperties.contains("Color")) ...{
              ProductColorsList(
                colors: _variationsPropertiesValues["Color"]!,
              ),
              Gap(30 * SizeConfig.verticalBlock),
            },
            if (widget.product.availableProperties.contains("Size")) ...{
              VariationsPropertiesSection(
                variationsPropertyName: "Select Size",
                variationsPropertiesValues:
                    _variationsPropertiesValues["Size"]!,
              ),
              Gap(30 * SizeConfig.verticalBlock),
            },
            if (widget.product.availableProperties.contains("Material")) ...{
              VariationsPropertiesSection(
                variationsPropertyName: "Select Material",
                variationsPropertiesValues:
                    _variationsPropertiesValues["Material"]!,
              ),
              Gap(30 * SizeConfig.verticalBlock),
            },
            DescriptionComponent(
              descriptionText: widget.product.description,
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
