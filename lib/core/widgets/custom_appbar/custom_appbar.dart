import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/app_colors/app_colors.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/core/widgets/custom_appbar/custom_appbar_back_button.dart';
import 'package:slash_product_details_app/core/widgets/custom_appbar/custom_appbar_title.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final List<Widget> actions;
  const CustomAppBar(
      {super.key,
      required this.title,
      this.centerTitle = true,
      this.actions = const []});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: !centerTitle
          ? 125 * SizeConfig.horizontalBlock
          : 30 * SizeConfig.horizontalBlock,
      backgroundColor: AppColors.primaryColor,
      leading: !centerTitle
          ? Center(
              child: Padding(
              padding: EdgeInsets.only(left: 10.0 * SizeConfig.horizontalBlock),
              child: CustomAppBarTitle(
                title: title,
                fontSize: 40,
              ),
            ))
          : Padding(
              padding: EdgeInsets.only(left: 8 * SizeConfig.horizontalBlock),
              child: const CustomAppBarBackButton()),
      title: centerTitle
          ? CustomAppBarTitle(
              title: title,
              fontSize: 18,
            )
          : null,
      centerTitle: centerTitle,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50 * SizeConfig.verticalBlock);
}
