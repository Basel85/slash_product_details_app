import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/constants/screen_navigation_paths.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/core/widgets/custom_appbar/custom_appbar.dart';
import 'package:slash_product_details_app/features/home/ui/widgets/product_card/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: GridView.builder(
        padding: EdgeInsets.symmetric(
            horizontal: 10 * SizeConfig.horizontalBlock,
            vertical: 10 * SizeConfig.verticalBlock),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150 * SizeConfig.horizontalBlock,
            childAspectRatio: 0.65,
            crossAxisSpacing: 10 * SizeConfig.horizontalBlock,
            mainAxisSpacing: 10 * SizeConfig.verticalBlock),
        itemCount: 20,
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, productDetailsScreenPath);
            },
            child: const ProductCard()),
      ),
    );
  }
}
