import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_product_details_app/core/mixins/hex_color_to_color_converter.dart';
import 'package:slash_product_details_app/features/product_details/cubits/selection/selection_cubit.dart';
import 'package:slash_product_details_app/features/product_details/cubits/selection/selection_states.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_colors_list/product_color.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/scrollable_list_from_center/scrollable_list_from_center.dart';

class ProductColorsList extends StatelessWidget with HexColorToColorConverter {
  final List<String> colors;
  const ProductColorsList({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return ScrollableListFromCenter(
        children: List.generate(colors.length, (index) {
      Color color = convertHexColorToColor(colors[index]);
      return BlocConsumer<SelectionCubit, SelectionState>(
        listenWhen: (previous, current) =>
            current is SelectionSelectedState &&
            current.currentSelectionIndex == index,
        listener: (context, state) {},
        buildWhen: (previous, current) =>
            current is SelectionSelectedState &&
            (current.previousSelectionIndex == index ||
                current.currentSelectionIndex == index),
        builder: (context, state) => GestureDetector(
          onTap: () {
            SelectionCubit.get(context).select(selectionIndex: index);
          },
          child: ProductColor(
            color: color,
            isNotLast: index < colors.length - 1,
            isSelected: (state is SelectionInitialState && index == 0) ||
                (state is SelectionSelectedState &&
                    state.currentSelectionIndex == index),
          ),
        ),
      );
    }));
  }
}
