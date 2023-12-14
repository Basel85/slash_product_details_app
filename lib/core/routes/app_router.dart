import 'package:flutter/material.dart';
import 'package:slash_product_details_app/features/product_details/ui/product_details_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/product_details_screen':
        return MaterialPageRoute(
          builder: (_) => const ProductDetailsScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
