import 'package:slash_product_details_app/core/data/models/product_model.dart';
import 'package:slash_product_details_app/core/data/models/product_property_and_value_model.dart';
import 'package:slash_product_details_app/core/data/models/product_variation_model.dart';

List<ProductModel> products = [
  ProductModel(
    id: 1,
    name: "Sample Product",
    description: "This is a sample product description.",
    brandId: 101,
    brandName: "Sample Brand",
    brandLogoUrl: "https://samplebrand.com/logo.png",
    rating: 4.5,
    variations: [
      ProductVariationModel(
        id: 101,
        productId: 1,
        price: 49.99,
        quantity: 100,
        inStock: true,
        productVariantImages: ["https://sampleproduct.com/image1.jpg"],
        productPropertiesValues: [
          ProductPropertyAndValueModel(property: "Color", value: "#008000"),
          ProductPropertyAndValueModel(property: "Size", value: "XL"),
          ProductPropertyAndValueModel(property: "Material", value: "Cotton"),
        ],
      ),
      ProductVariationModel(
        id: 102,
        productId: 1,
        price: 59.99,
        quantity: 50,
        inStock: false,
        productVariantImages: ["https://sampleproduct.com/image2.jpg"],
        productPropertiesValues: [
          ProductPropertyAndValueModel(property: "Color", value: "#0000FF"),
          ProductPropertyAndValueModel(property: "Size", value: "L"),
          ProductPropertyAndValueModel(property: "Material", value: "Polyester"),
        ],
      ),
    ],
  ),
   ProductModel(
      id: 2,
      name: "Single Color Product",
      description: "Product with one color and size.",
      brandId: 102,
      brandName: "Sample Brand",
      brandLogoUrl: "https://samplebrand.com/logo.png",
      rating: 4.0,
      variations: [
        ProductVariationModel(
          id: 102,
          productId: 2,
          price: 29.99,
          quantity: 50,
          inStock: true,
          productVariantImages: ["https://sampleproduct.com/image1.jpg"],
          productPropertiesValues: [
            ProductPropertyAndValueModel(property: "Color", value: "#FF0000"), // Red
            ProductPropertyAndValueModel(property: "Size", value: "M"),
          ],
        ),
      ],
    ),
     ProductModel(
      id: 3,
      name: "Multi-Color Product",
      description: "Product with multiple colors and sizes.",
      brandId: 103,
      brandName: "Another Brand",
      brandLogoUrl: "https://anotherbrand.com/logo.png",
      rating: 4.5,
      variations: [
        ProductVariationModel(
          id: 301,
          productId: 3,
          price: 39.99,
          quantity: 30,
          inStock: true,
          productVariantImages: ["https://sampleproduct.com/image2.jpg"],
          productPropertiesValues: [
            ProductPropertyAndValueModel(property: "Color", value: "#0000FF"),
            ProductPropertyAndValueModel(property: "Size", value: "L"),
          ],
        ),
        ProductVariationModel(
          id: 302,
          productId: 3,
          price: 42.99,
          quantity: 20,
          inStock: true,
          productVariantImages: ["https://sampleproduct.com/image3.jpg"],
          productPropertiesValues: [
            ProductPropertyAndValueModel(property: "Color", value: "#008000"),
            ProductPropertyAndValueModel(property: "Size", value: "XL"),
          ],
        ),
      ],
    ),
     ProductModel(
      id: 4,
      name: "Multi-Size Product",
      description: "Product with multiple sizes and materials.",
      brandId: 104,
      brandName: "Yet Another Brand",
      brandLogoUrl: "https://yetanotherbrand.com/logo.png",
      rating: 4.2,
      variations: [
        ProductVariationModel(
          id: 401,
          productId: 4,
          price: 49.99,
          quantity: 25,
          inStock: true,
          productVariantImages: ["https://sampleproduct.com/image4.jpg"],
          productPropertiesValues: [
            ProductPropertyAndValueModel(property: "Size", value: "S"),
            ProductPropertyAndValueModel(property: "Material", value: "Cotton"),
          ],
        ),
        ProductVariationModel(
          id: 402,
          productId: 4,
          price: 52.99,
          quantity: 15,
          inStock: true,
          productVariantImages: ["https://sampleproduct.com/image5.jpg"],
          productPropertiesValues: [
            ProductPropertyAndValueModel(property: "Size", value: "M"),
            ProductPropertyAndValueModel(property: "Material", value: "Polyester"),
          ],
        ),
      ],
    ),
    ProductModel(
    id: 5,
    name: "No Size Product",
    description: "Product with no size property and no variations property values.",
    brandId: 105,
    brandName: "Brand XYZ",
    brandLogoUrl: "https://brandxyz.com/logo.png",
    rating: 3.8,
    variations: [
      ProductVariationModel(
        id: 501,
        productId: 5,
        price: 34.99,
        quantity: 10,
        inStock: true,
        productVariantImages: ["https://sampleproduct.com/image6.jpg"],
        productPropertiesValues: [],
      ),
    ],
  ),
   ProductModel(
    id: 6,
    name: "No Size Product",
    description: "Product with no size property.",
    brandId: 105,
    brandName: "Brand ABC",
    brandLogoUrl: "https://brandabc.com/logo.png",
    rating: 4.1,
    variations: [
      ProductVariationModel(
        id: 501,
        productId: 5,
        price: 39.99,
        quantity: 15,
        inStock: true,
        productVariantImages: ["https://sampleproduct.com/image7.jpg"],
        productPropertiesValues: [
          ProductPropertyAndValueModel(property: "Color", value: "#FFA500"),
          ProductPropertyAndValueModel(property: "Material", value: "Leather"),
        ],
      ),
      ProductVariationModel(
        id: 502,
        productId: 5,
        price: 44.99,
        quantity: 20,
        inStock: true,
        productVariantImages: ["https://sampleproduct.com/image8.jpg"],
        productPropertiesValues: [
          ProductPropertyAndValueModel(property: "Color", value: "#000000"),
          ProductPropertyAndValueModel(property: "Material", value: "Canvas"),
        ],
      ),
    ],
  )
];
