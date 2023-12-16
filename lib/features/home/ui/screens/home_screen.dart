import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/core/widgets/custom_appbar/custom_appbar.dart';
import 'package:slash_product_details_app/core/widgets/get_error_message/get_error_message.dart';
import 'package:slash_product_details_app/features/home/cubits/get_all_products/get_all_products_cubit.dart';
import 'package:slash_product_details_app/features/home/cubits/get_all_products/get_all_products_states.dart';
import 'package:slash_product_details_app/features/home/ui/widgets/products_cards_grid/products_cards_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  initState() {
    GetAllProductsCubit.get(context).getAllProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Slash.",
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10 * SizeConfig.horizontalBlock),
            child: CircleAvatar(
              radius: 20 * SizeConfig.textRatio,
              backgroundColor: Colors.white,
            ),
          )
        ],
      ),
      body: BlocBuilder<GetAllProductsCubit, GetAllProductsState>(
          builder: (context, state) {
        if (state is GetAllProductsSuccessState) {
          return ProductsCardsGrid(products: state.products,);
        } else if (state is GetAllProductsFailureState) {
          return GetErrorMessage(
              errorMessage: state.errorMessage,
              onPressed: () {
                GetAllProductsCubit.get(context).getAllProducts();
              });
        } else {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }
      }),
    );
  }
}
