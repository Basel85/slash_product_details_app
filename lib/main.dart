import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/app_colors/app_colors.dart';
import 'package:slash_product_details_app/core/constants/screen_navigation_paths.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/core/app_router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.primaryColor,
          colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: AppColors.primaryColor,
              secondary: AppColors.secondaryColor)),
      initialRoute: splashScreenPath,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
