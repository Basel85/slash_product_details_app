import 'package:slash_product_details_app/core/data/entities/product_variation.dart';

abstract class VariationState {}
class VariationInitialState extends VariationState {}
class VariationChangedState extends VariationState {
  final ProductVariation currentProductVariation;
  final ProductVariation previousProductVariation;
  VariationChangedState(
      {required this.currentProductVariation,
      required this.previousProductVariation});
}