import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/product_details/cubits/selection/selection_cubit.dart';
import 'package:slash_product_details_app/features/product_details/cubits/selection/selection_states.dart';
import 'package:slash_product_details_app/features/product_details/cubits/variation/variation_cubit.dart';
import 'package:slash_product_details_app/features/product_details/data/maps/current_variation_properties_values_updater.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/scrollable_list_from_center/scrollable_list_from_center.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/variations_properties_section/variations_properties_section_name.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/variations_properties_section/variations_properties_value_component/variations_properties_value_component.dart';

class VariationsPropertiesSection extends StatefulWidget {
  final String variationsPropertyName;
  final List<String> variationsPropertiesValues;
  const VariationsPropertiesSection(
      {super.key,
      required this.variationsPropertyName,
      required this.variationsPropertiesValues});

  @override
  State<VariationsPropertiesSection> createState() =>
      _VariationsPropertiesSectionState();
}

class _VariationsPropertiesSectionState
    extends State<VariationsPropertiesSection> {
  @override
  void initState() {
    CurrentVariationPropertiesValues
            .currentVariationPropertiesValues[widget.variationsPropertyName] =
        widget.variationsPropertiesValues[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VariationsPropertiesSectionName(
          variationsPropertyName: widget.variationsPropertyName,
        ),
        SizedBox(
          height: 10 * SizeConfig.verticalBlock,
        ),
        ScrollableListFromCenter(
            children: List.generate(
                widget.variationsPropertiesValues.length,
                (index) => GestureDetector(
                      onTap: () {
                        CurrentVariationPropertiesValues
                                    .currentVariationPropertiesValues[
                                widget.variationsPropertyName] =
                            widget.variationsPropertiesValues[index];
                        SelectionCubit.get(context)
                            .select(selectionIndex: index);
                        VariationCubit.get(context).selectNewVariation();
                      },
                      child: BlocBuilder<SelectionCubit, SelectionState>(
                        buildWhen: (previous, current) =>
                            current is SelectionSelectedState &&
                            (current.previousSelectionIndex == index ||
                                current.currentSelectionIndex == index),
                        builder: (context, state) =>
                            VariationsPropertiesValueComponent(
                          variationsPropertyValueName:
                              widget.variationsPropertiesValues[index],
                          isSelected:
                              (state is SelectionInitialState && index == 0) ||
                                  (state is SelectionSelectedState &&
                                      state.currentSelectionIndex == index),
                        ),
                      ),
                    )))
      ],
    );
  }
}
