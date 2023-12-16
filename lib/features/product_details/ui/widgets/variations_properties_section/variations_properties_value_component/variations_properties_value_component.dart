import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/app_colors/app_colors.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/variations_properties_section/variations_properties_value_component/variations_properties_value_text.dart';

class VariationsPropertiesValueComponent extends StatelessWidget {
  final String variationsPropertyValueName;
  final bool isSelected;
  const VariationsPropertiesValueComponent(
      {super.key,
      required this.variationsPropertyValueName,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColors.secondaryColor : AppColors.greyColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        padding: EdgeInsets.symmetric(
            horizontal: 10 * SizeConfig.horizontalBlock,
            vertical: 5 * SizeConfig.verticalBlock),
        child: VariationsPropertiesValueText(
          isSelected: isSelected,
          variationsPropertyValue: variationsPropertyValueName,
        ));
  }
}
