import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/core/widgets/appbar/custom_appbar.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/product_info/product_info.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(title: "Product Details"),
        body: ListView(
          padding:
              EdgeInsets.symmetric(horizontal: 20 * SizeConfig.horizontalBlock),
          children: const [ProductInfo()],
        ),
      ),
    );
  }
}
