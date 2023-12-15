import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/core/widgets/custom_appbar/custom_appbar.dart';

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
            padding: EdgeInsets.only(left: 10*SizeConfig.horizontalBlock),
            child: CircleAvatar(
              radius: 20 * SizeConfig.textRatio,
              backgroundColor: Colors.white,
            ),
          )
        ],
      ),
      body: const Center(
        child: Text("Home Screen"),
      ),
    );
  }
}
