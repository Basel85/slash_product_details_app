import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/product_details/cubits/variation/variation_cubit.dart';
import 'package:slash_product_details_app/features/product_details/cubits/variation/variation_states.dart';

class ProductInfoPrice extends StatelessWidget {
  final num productInfoPrice;
  const ProductInfoPrice({super.key, required this.productInfoPrice});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VariationCubit, VariationState>(
      buildWhen: (previous, current) =>
          current is VariationChangedState &&
          current.currentProductVariation.price !=
              current.previousProductVariation.price,
      builder: (context, state) => Text(
          "EGP ${state is! VariationChangedState ? productInfoPrice : state.currentProductVariation.price}",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15 * SizeConfig.textRatio,
            fontWeight: FontWeight.w600,
          )),
    );
  }
}
