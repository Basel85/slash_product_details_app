import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/core/widgets/custom_icon_button/custom_icon_button.dart';
import 'package:slash_product_details_app/features/product_details/cubits/counter/counter_cubit.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/quantity_component/quantity_value.dart';

class QuantityCounter extends StatelessWidget {
  const QuantityCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.white),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 12.5 * SizeConfig.horizontalBlock,
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 5.0 * SizeConfig.verticalBlock),
              child: CustomIconButton(
                iconData: Icons.remove,
                onTap: () {
                  CounterCubit.get(context).decrement();
                },
              ),
            ),
            VerticalDivider(
              width: 25 * SizeConfig.horizontalBlock,
              color: Colors.white,
              thickness: 1,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 5 * SizeConfig.verticalBlock),
                child: const QuantityValue()),
            VerticalDivider(
              width: 25 * SizeConfig.horizontalBlock,
              color: Colors.white,
              thickness: 1,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 5 * SizeConfig.verticalBlock),
              child: CustomIconButton(
                iconData: Icons.add,
                onTap: () {
                  CounterCubit.get(context).increment();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
