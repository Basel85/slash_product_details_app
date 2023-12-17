import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_product_details_app/features/home/cubits/get_all_products/get_all_products_states.dart';
import 'package:slash_product_details_app/features/home/data/repositories/get_all_products_repository.dart';


class GetAllProductsCubit extends Cubit<GetAllProductsState> {
  GetAllProductsCubit() : super(GetAllProductsInitial());
  static GetAllProductsCubit get(context) => BlocProvider.of(context);
  void getAllProducts() async {
    // The is a simulation of calling an API to get all products because there is not API available
    emit(GetAllProductsLoadingState());
    try {
      final products = await GetAllProductsRepository().getAllProducts();
      emit(GetAllProductsSuccessState(products: products));
    } on SocketException {
      emit(GetAllProductsFailureState(errorMessage: "No internet connection!"));
    } on HttpException {
      emit(GetAllProductsFailureState(errorMessage: "Couldn't find the product"));
    } on FormatException {
      emit(GetAllProductsFailureState(errorMessage: "Bad response format"));
    } catch (_) {
      emit(GetAllProductsFailureState(errorMessage: "Something went wrong! Please try again"));
    }
  }
}
