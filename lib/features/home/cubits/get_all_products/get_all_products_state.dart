
import 'package:slash_product_details_app/core/data/models/product_model.dart';

class GetAllProductsState {}

class GetAllProductsInitial extends GetAllProductsState {}

class GetAllProductsLoadingState extends GetAllProductsState {}

class GetAllProductsSuccessState extends GetAllProductsState {
  final List<ProductModel> products;

  GetAllProductsSuccessState({required this.products});
}

class GetAllProductsFailureState extends GetAllProductsState {
  final String errorMessage;

  GetAllProductsFailureState({required this.errorMessage});
}

