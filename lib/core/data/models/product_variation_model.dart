import 'package:slash_product_details_app/core/data/models/product_property_and_value_model.dart';

class ProductVariationModel {
  final int id;
  final int productId;
  final num price;
  final int quantity;
  final bool inStock;
  final List<String> productVariantImages;
  final List<ProductPropertyAndValueModel> productPropertiesValues;

  ProductVariationModel({
    required this.id,
    required this.productId,
    required this.price,
    required this.quantity,
    required this.inStock,
    required this.productVariantImages,
    required this.productPropertiesValues,
  });
}