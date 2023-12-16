import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/product_details/cubits/selection/selection_cubit.dart';
import 'package:slash_product_details_app/features/product_details/cubits/selection/selection_states.dart';
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
                (index) => BlocConsumer<SelectionCubit, SelectionState>(
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
                          SelectionCubit.get(context)
                              .select(selectionIndex: index);
                        },
                        child: VariationsPropertiesValueComponent(
                          variationsPropertyValueName:
                              variationsPropertiesValues[index],
                          isSelected: (state is SelectionInitialState && index==0) || (state is SelectionSelectedState &&
                              state.currentSelectionIndex == index),
                        ),
                      ),
                    )))
      ],
    );
  }
}
