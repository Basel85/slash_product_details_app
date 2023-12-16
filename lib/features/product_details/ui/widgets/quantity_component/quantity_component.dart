import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/product_details/cubits/counter/counter_cubit.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/quantity_component/quantity_counter.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/quantity_component/quantity_name.dart';

class QuantityComponent extends StatelessWidget {
  const QuantityComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const QuantityName(),
        Gap(10 * SizeConfig.horizontalBlock),
        BlocProvider(create: (context) => CounterCubit(),child: const QuantityCounter()),
      ],
    );
  }
}
