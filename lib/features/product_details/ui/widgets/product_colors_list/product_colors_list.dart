import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_product_details_app/core/mixins/hex_color_to_color_converter.dart';
import 'package:slash_product_details_app/features/product_details/cubits/selection/selection_cubit.dart';
import 'package:slash_product_details_app/features/product_details/cubits/selection/selection_states.dart';
import 'package:slash_product_details_app/features/product_details/cubits/variation/variation_cubit.dart';
import 'package:slash_product_details_app/features/product_details/data/maps/current_variation_properties_values_updater.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_colors_list/product_color.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/scrollable_list_from_center/scrollable_list_from_center.dart';

class ProductColorsList extends StatefulWidget{
  final List<String> colors;
  const ProductColorsList({super.key, required this.colors});

  @override
  State<ProductColorsList> createState() => _ProductColorsListState();
}

class _ProductColorsListState extends State<ProductColorsList> with HexColorToColorConverter {
  @override
  initState() {
    CurrentVariationPropertiesValues
        .currentVariationPropertiesValues["Color"] = widget.colors[0];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ScrollableListFromCenter(
        children: List.generate(widget.colors.length, (index) {
      Color color = convertHexColorToColor(widget.colors[index]);
      return GestureDetector(
        onTap: () {
            CurrentVariationPropertiesValues
                .currentVariationPropertiesValues["Color"] = widget.colors[index];
            SelectionCubit.get(context).select(selectionIndex: index);
            VariationCubit.get(context).selectNewVariation();
          },
        child: BlocBuilder<SelectionCubit, SelectionState>(
          buildWhen: (previous, current) =>
              current is SelectionSelectedState &&
              (current.previousSelectionIndex == index ||
                  current.currentSelectionIndex == index),
          builder: (context, state) => ProductColor(
            color: color,
            isNotLast: index < widget.colors.length - 1,
            isSelected: (state is SelectionInitialState && index == 0) ||
                (state is SelectionSelectedState &&
                    state.currentSelectionIndex == index),
          ),
        ),
      );
    }));
  }
}
