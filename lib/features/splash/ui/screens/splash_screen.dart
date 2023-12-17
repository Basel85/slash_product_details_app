import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/constants/screen_navigation_paths.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, homeScreenPath);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            'assets/images/app_logo.jpg',
            width: 200 * SizeConfig.textRatio,
            height: 200 * SizeConfig.textRatio,
          ),
        ),
      ),
    );
  }
}
