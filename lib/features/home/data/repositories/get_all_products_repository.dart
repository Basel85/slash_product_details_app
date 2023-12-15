import 'package:slash_product_details_app/core/data/dummy_data/products_dummy_data.dart';
import 'package:slash_product_details_app/core/data/models/product_model.dart';

class GetAllProductsRepository {
  Future<List<ProductModel>> getAllProducts() async {
    return await ProductsDummyData.getAllProducts();
  }
}
