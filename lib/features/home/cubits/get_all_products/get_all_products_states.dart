
import 'package:slash_product_details_app/core/data/entities/product.dart';

class GetAllProductsState {}

class GetAllProductsInitial extends GetAllProductsState {}

class GetAllProductsLoadingState extends GetAllProductsState {}

class GetAllProductsSuccessState extends GetAllProductsState {
  final List<Product> products;

  GetAllProductsSuccessState({required this.products});
}

class GetAllProductsFailureState extends GetAllProductsState {
  final String errorMessage;

  GetAllProductsFailureState({required this.errorMessage});
}

