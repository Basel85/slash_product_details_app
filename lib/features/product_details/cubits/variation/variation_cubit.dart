import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_product_details_app/core/data/entities/product_variation.dart';
import 'package:slash_product_details_app/features/product_details/cubits/variation/variation_states.dart';
import 'package:slash_product_details_app/features/product_details/data/maps/current_variation_properties_values_updater.dart';

class VariationCubit extends Cubit<VariationState> {
  final List<ProductVariation> productVariations;
  late ProductVariation _previousProductVariation;
  late ProductVariation _currentProductVariation;
  VariationCubit({required this.productVariations})
      : super(VariationInitialState()) {
    _currentProductVariation = productVariations[0];
  }
  static VariationCubit get(context) => BlocProvider.of(context);
  bool _checkIfVariationIsAvailable(ProductVariation productVariation) {
    for (final productPropertyAndValue
        in productVariation.productPropertiesValues) {
      if (!(CurrentVariationPropertiesValues.currentVariationPropertiesValues
              .containsKey(productPropertyAndValue.property) &&
          CurrentVariationPropertiesValues.currentVariationPropertiesValues[
                  productPropertyAndValue.property] ==
              productPropertyAndValue.value)) {
        return false;
      }
    }
    return true;
  }

  void selectNewVariation() {
    _previousProductVariation = _currentProductVariation;
    for (final productVariation in productVariations) {
      if (_checkIfVariationIsAvailable(productVariation)) {
        _currentProductVariation = productVariation;
        break;
      }
    }
    emit(VariationChangedState(
        currentProductVariation: _currentProductVariation,
        previousProductVariation: _previousProductVariation));
  }
}
