import 'package:slash_product_details_app/core/app_assets/app_assets.dart';
import 'package:slash_product_details_app/core/data/entities/product.dart';
import 'package:slash_product_details_app/core/data/entities/product_property_and_value.dart';
import 'package:slash_product_details_app/core/data/entities/product_variation.dart';

class ProductsDummyData {
  static Future<List<Product>> getAllProducts() async {
    List<Product> products = [
      Product(
        id: 1,
        name: "Multiple colors, sizes, and materials",
        description: "This is a Multiple colors, sizes, and materials product description.",
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
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#008000"),
              ProductPropertyAndValue(property: "Size", value: "XL"),
              ProductPropertyAndValue(property: "Material", value: "Cotton"),
            ],
          ),
          ProductVariation(
            id: 102,
            productId: 1,
            price: 59.99,
            quantity: 50,
            inStock: false,
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#0000FF"),
              ProductPropertyAndValue(property: "Size", value: "L"),
              ProductPropertyAndValue(property: "Material", value: "Polyester"),
            ],
          ),
          ProductVariation(
            id: 103,
            productId: 1,
            price: 69.99,
            quantity: 25,
            inStock: true,
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage,
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#008000"),
              ProductPropertyAndValue(property: "Size", value: "XL"),
              ProductPropertyAndValue(property: "Material", value: "Polyester"),
            ],
          ),
          ProductVariation(
            id: 104,
            productId: 1,
            price: 79.99,
            quantity: 0,
            inStock: false,
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#008000"),
              ProductPropertyAndValue(property: "Size", value: "L"),
              ProductPropertyAndValue(property: "Material", value: "Cotton"),
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
        name: "Single Color and multi-size Product",
        description: "Product with one color and multiple sizes.",
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
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#FF0000"),
              ProductPropertyAndValue(property: "Size", value: "M"),
            ],
          ),
          ProductVariation(
            id: 103,
            productId: 2,
            price: 34.99,
            quantity: 25,
            inStock: true,
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#FF0000"),
              ProductPropertyAndValue(property: "Size", value: "L"),
            ],
          ),
        ],
        availableProperties: [
          "Color",
          "Size",
        ],
      ),
      Product(
        id: 4,
        name: "Multi-Size and Multi-Material Product",
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
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Size", value: "S"),
              ProductPropertyAndValue(property: "Material", value: "Cotton"),
            ],
          ),
          ProductVariation(
            id: 402,
            productId: 4,
            price: 52.99,
            quantity: 15,
            inStock: true,
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage,
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Size", value: "M"),
              ProductPropertyAndValue(property: "Material", value: "Polyester"),
            ],
          ),
          ProductVariation(
            id: 403,
            productId: 4,
            price: 54.99,
            quantity: 10,
            inStock: true,
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage,
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Size", value: "M"),
              ProductPropertyAndValue(property: "Material", value: "Cotton"),
            ],
          ),
          ProductVariation(
            id: 404,
            productId: 4,
            price: 59.99,
            quantity: 5,
            inStock: true,
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage,
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Size", value: "S"),
              ProductPropertyAndValue(property: "Material", value: "Polyester"),
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
        name: "No Variations Product",
        description:
            "Product no variations property values.",
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
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage
            ],
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
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#FFA500"),
              ProductPropertyAndValue(property: "Material", value: "Leather"),
            ],
          ),
          ProductVariation(
            id: 502,
            productId: 5,
            price: 44.99,
            quantity: 20,
            inStock: true,
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#FF0000"),
              ProductPropertyAndValue(property: "Material", value: "Canvas"),
            ],
          ),
          ProductVariation(
            id: 503,
            productId: 5,
            price: 49.99,
            quantity: 25,
            inStock: true,
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#FF0000"),
              ProductPropertyAndValue(property: "Material", value: "Leather"),
            ],
          ),
          ProductVariation(
            id: 504,
            productId: 5,
            price: 54.99,
            quantity: 30,
            inStock: true,
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#FFA500"),
              ProductPropertyAndValue(property: "Material", value: "Canvas"),
            ],
          ),
        ],
        availableProperties: [
          "Color",
          "Material",
        ],
      ),
      Product(
        id: 7,
        name: "Multi-Color Product",
        description: "Product with multiple colors property.",
        brandId: 106,
        brandName: "Brand XYZ",
        brandLogoUrl: AppAssets.defaultImage,
        rating: 4.0,
        variations: [
          ProductVariation(
            id: 701,
            productId: 7,
            price: 29.99,
            quantity: 10,
            inStock: true,
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#0000FF"),
            ],
          ),
          ProductVariation(
            id: 702,
            productId: 7,
            price: 34.99,
            quantity: 15,
            inStock: true,
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Color", value: "#FFA500"),
            ],
          ),
        ],
        availableProperties: [
          "Color",
        ],
      ),
      Product(
        id: 8,
        name: "Multi-Size Product",
        description: "Product with multiple sizes variation.",
        brandId: 107,
        brandName: "Brand Basel",
        brandLogoUrl: AppAssets.defaultImage,
        rating: 4.0,
        variations: [
          ProductVariation(
            id: 801,
            productId: 8,
            price: 29.99,
            quantity: 10,
            inStock: true,
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Size", value: "2XL"),
            ],
          ),
          ProductVariation(
            id: 802,
            productId: 8,
            price: 34.99,
            quantity: 15,
            inStock: true,
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Size", value: "3XL"),
            ],
          ),
        ],
        availableProperties: [
          "Size",
        ],
      ),
      Product(
        id: 9,
        name: "Multi-Material Product",
        description: "Product with multiple materials property.",
        brandId: 108,
        brandName: "Flutter Internship",
        brandLogoUrl: AppAssets.defaultImage,
        rating: 4.0,
        variations: [
          ProductVariation(
            id: 901,
            productId: 9,
            price: 29.99,
            quantity: 10,
            inStock: true,
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Material", value: "Cotton"),
            ],
          ),
          ProductVariation(
            id: 902,
            productId: 9,
            price: 34.99,
            quantity: 15,
            inStock: true,
            productVariantImages: [
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage,
              AppAssets.defaultImage
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: "Material", value: "Polyester"),
            ],
          ),
        ],
        availableProperties: [
          "Material",
        ],
      )
    ];
    return products;
  }
}
