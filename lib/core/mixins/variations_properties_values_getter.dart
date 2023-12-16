import 'package:slash_product_details_app/core/data/entities/product.dart';

mixin VariationsPropertiesValuesGetter {
  Map<String, List<String>> getVariationsPropertiesValues({required Product product}) {
    Map<String,List<String>> variationsPropertiesValues = {};
    for(String property in product.availableProperties){
      List<String> propertyValues = [];
      for(final variation in product.variations){
         for(final variationPropertyAndValue in variation.productPropertiesValues){
           if(variationPropertyAndValue.property == property){
              propertyValues.add(variationPropertyAndValue.value);
           }
         }
      }
      Set<String> propertyValuesSet = Set<String>.from(propertyValues);
      propertyValues = propertyValuesSet.toList();
      variationsPropertiesValues[property] = propertyValues;
    }
    return variationsPropertiesValues;
  }
}
