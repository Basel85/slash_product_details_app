import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/variations_properties_section/variations_properties_value_component/variations_properties_value_text.dart';

class VariationsPropertiesValueComponent extends StatelessWidget {
  final String variationsPropertyValueName;
  const VariationsPropertiesValueComponent(
      {super.key, required this.variationsPropertyValueName});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 68, 66, 66),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: EdgeInsets.symmetric(
            horizontal: 10 * SizeConfig.horizontalBlock,
            vertical: 5 * SizeConfig.verticalBlock),
        child: VariationsPropertiesValueText(
          variationsPropertyValue: variationsPropertyValueName,
        ));
  }
}
