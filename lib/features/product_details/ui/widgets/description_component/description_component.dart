import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/description_component/desciption_title_component.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/description_component/description_text.dart';

class DescriptionComponent extends StatelessWidget {
  const DescriptionComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: const DescriptionTitle(),
        backgroundColor: const Color.fromARGB(255, 63, 62, 62),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        collapsedBackgroundColor: const Color.fromARGB(255, 63, 62, 62),
        collapsedIconColor: Colors.white,
        collapsedShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        childrenPadding: EdgeInsets.symmetric(
            horizontal: 20 * SizeConfig.horizontalBlock,
            vertical: 15 * SizeConfig.verticalBlock),
        iconColor: Colors.white,
        children: const [DescriptionText()]);
  }
}
