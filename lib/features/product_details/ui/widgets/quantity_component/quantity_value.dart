import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/product_details/cubits/counter/counter_cubit.dart';
import 'package:slash_product_details_app/features/product_details/cubits/counter/counter_states.dart';

class QuantityValue extends StatelessWidget {
  const QuantityValue({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit,CounterState>(
      builder:(context,state)=> Text(
        state is CounterChangedState
            ? "${state.counter}":"0",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16 * SizeConfig.textRatio,
          decoration: TextDecoration.underline,
          decorationColor: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
