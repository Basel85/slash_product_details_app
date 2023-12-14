import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/scrollable_list_from_center/scrollable_list_from_center.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/variations_properties_section/variations_properties_section_name.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/variations_properties_section/variations_properties_value_component/variations_properties_value_component.dart';

class VariationsPropertiesSection extends StatelessWidget {
  final String variationsPropertyName;
  final List<String> variationsPropertiesValues;
  const VariationsPropertiesSection(
      {super.key,
      required this.variationsPropertyName,
      required this.variationsPropertiesValues});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VariationsPropertiesSectionName(
          variationsPropertyName: variationsPropertyName,
        ),
        SizedBox(
          height: 10 * SizeConfig.verticalBlock,
        ),
        ScrollableListFromCenter(
            children: List.generate(
                variationsPropertiesValues.length,
                (index) => VariationsPropertiesValueComponent(
                      variationsPropertyValueName:
                          variationsPropertiesValues[index],
                    )))
      ],
    );
  }
}
