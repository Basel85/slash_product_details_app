import 'package:slash_product_details_app/core/app_assets/app_assets.dart';
import 'package:slash_product_details_app/core/data/entities/product.dart';
import 'package:slash_product_details_app/core/data/entities/product_property_and_value.dart';
import 'package:slash_product_details_app/core/data/entities/product_variation.dart';

class ProductsDummyData {
  static Future<List<Product>> getAllProducts() async {
    List<Product> products = [
      Product(
        id: 1,
        name: "Sample Product",
        description: "This is a sample product description.",
        brandId: 101,
        brandName: "Sample Brand",
        brandLogoUrl: AppAssets.defaultImage,
        rating: 4.5,
        variations: [
          ProductVariation(
            id: 101,
            productId: 1,
            price: 49.99,
            quantity: 100,
            inStock: true,
            productVariantImages: [AppAssets.defaultImage],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#008000"),
              ProductPropertyAndValue(property: "Size", value: "XL"),
              ProductPropertyAndValue(
                  property: "Material", value: "Cotton"),
            ],
          ),
          ProductVariation(
            id: 102,
            productId: 1,
            price: 59.99,
            quantity: 50,
            inStock: false,
            productVariantImages: [AppAssets.defaultImage],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#0000FF"),
              ProductPropertyAndValue(property: "Size", value: "L"),
              ProductPropertyAndValue(
                  property: "Material", value: "Polyester"),
            ],

          ),
          
        ],
        availableProperties: [
          "Color",
          "Size",
          "Material",
        ],
      ),
      Product(
        id: 2,
        name: "Single Color Product",
        description: "Product with one color and size.",
        brandId: 102,
        brandName: "Sample Brand",
        brandLogoUrl: AppAssets.defaultImage,
        rating: 4.0,
        variations: [
          ProductVariation(
            id: 102,
            productId: 2,
            price: 29.99,
            quantity: 50,
            inStock: true,
            productVariantImages: [AppAssets.defaultImage],
            productPropertiesValues: [
              ProductPropertyAndValue(
                  property: "Color", value: "#FF0000"), // Red
              ProductPropertyAndValue(property: "Size", value: "M"),
            ],
          ),
        ],
        availableProperties: [
          "Color",
          "Size",
        ],
      ),
      Product(
        id: 3,
        name: "Multi-Color Product",
        description: "Product with multiple colors and sizes.",
        brandId: 103,
        brandName: "Another Brand",
        brandLogoUrl: AppAssets.defaultImage,
        rating: 4.5,
        variations: [
          ProductVariation(
            id: 301,
            productId: 3,
            price: 39.99,
            quantity: 30,
            inStock: true,
            productVariantImages: [AppAssets.defaultImage],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#0000FF"),
              ProductPropertyAndValue(property: "Size", value: "L"),
            ],
          ),
          ProductVariation(
            id: 302,
            productId: 3,
            price: 42.99,
            quantity: 20,
            inStock: true,
            productVariantImages: [AppAssets.defaultImage],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#008000"),
              ProductPropertyAndValue(property: "Size", value: "XL"),
            ],
          ),
        ],
        availableProperties:  [
          "Color",
          "Size",
        ],
      ),
      Product(
        id: 4,
        name: "Multi-Size Product",
        description: "Product with multiple sizes and materials.",
        brandId: 104,
        brandName: "Yet Another Brand",
        brandLogoUrl: AppAssets.defaultImage,
        rating: 4.2,
        variations: [
          ProductVariation(
            id: 401,
            productId: 4,
            price: 49.99,
            quantity: 25,
            inStock: true,
            productVariantImages: [AppAssets.defaultImage],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Size", value: "S"),
              ProductPropertyAndValue(
                  property: "Material", value: "Cotton"),
            ],
          ),
          ProductVariation(
            id: 402,
            productId: 4,
            price: 52.99,
            quantity: 15,
            inStock: true,
            productVariantImages: [AppAssets.defaultImage],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Size", value: "M"),
              ProductPropertyAndValue(
                  property: "Material", value: "Polyester"),
            ],
          ),
        ],
        availableProperties: [
          "Size",
          "Material",
        ],
      ),
      Product(
        id: 5,
        name: "No Size Product",
        description:
            "Product with no size property and no variations property values.",
        brandId: 105,
        brandName: "Brand XYZ",
        brandLogoUrl: AppAssets.defaultImage,
        rating: 3.8,
        variations: [
          ProductVariation(
            id: 501,
            productId: 5,
            price: 34.99,
            quantity: 10,
            inStock: true,
            productVariantImages: [AppAssets.defaultImage],
            productPropertiesValues: [],
          ),
        ],
        availableProperties: [],
      ),
      Product(
        id: 6,
        name: "No Size Product",
        description: "Product with no size property.",
        brandId: 105,
        brandName: "Brand ABC",
        brandLogoUrl: AppAssets.defaultImage,
        rating: 4.1,
        variations: [
          ProductVariation(
            id: 501,
            productId: 5,
            price: 39.99,
            quantity: 15,
            inStock: true,
            productVariantImages: [AppAssets.defaultImage],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#FFA500"),
              ProductPropertyAndValue(
                  property: "Material", value: "Leather"),
            ],
          ),
          ProductVariation(
            id: 502,
            productId: 5,
            price: 44.99,
            quantity: 20,
            inStock: true,
            productVariantImages: [AppAssets.defaultImage],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#000000"),
              ProductPropertyAndValue(
                  property: "Material", value: "Canvas"),
            ],
          ),
        ],
        availableProperties: [
          "Color",
          "Material",
        ],
      )
    ];
    return products;
  }
}
