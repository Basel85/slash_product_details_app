import 'package:slash_product_details_app/core/data/dummy_data/products_dummy_data.dart';
import 'package:slash_product_details_app/core/data/entities/product.dart';

class GetAllProductsRepository {
  Future<List<Product>> getAllProducts() async {
    return await ProductsDummyData.getAllProducts();
  }
}
