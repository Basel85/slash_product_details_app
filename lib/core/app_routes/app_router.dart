import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_product_details_app/features/home/cubits/get_all_products/get_all_products_cubit.dart';
import 'package:slash_product_details_app/features/home/ui/screens/home_screen.dart';
import 'package:slash_product_details_app/features/product_details/ui/screens/product_details_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/homeScreen':
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<GetAllProductsCubit>(
                create: (context) => GetAllProductsCubit(),
              ),
            ],
            child: const HomeScreen(),
          ),
        );
      case '/productDetailsScreen':
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
