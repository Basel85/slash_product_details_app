import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/product_details/cubits/variation/variation_cubit.dart';
import 'package:slash_product_details_app/features/product_details/cubits/variation/variation_states.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/image_slider/image_slider_big_item.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/image_slider/image_slider_small_item.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/scrollable_list_from_center/scrollable_list_from_center.dart';

class ImageSlider extends StatelessWidget {
  final List<String> productImages;
  const ImageSlider({super.key, required this.productImages});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VariationCubit, VariationState>(
      buildWhen: (previous, current) {
        return current is VariationChangedState &&
            current.currentProductVariation.productVariantImages !=
                current.previousProductVariation.productVariantImages;
      },
      builder: (context, state) {
        List<String> newProductImages = state is! VariationChangedState
            ? productImages
            : state.currentProductVariation.productVariantImages;
        return Column(
          children: [
            CarouselSlider.builder(
              itemCount: newProductImages.length,
              itemBuilder: (context, index, realIndex) {
                return ImageSliderBigItem(
                  productImageAssetPath: newProductImages[index],
                );
              },
              options: CarouselOptions(
                height: 200 * SizeConfig.verticalBlock,
                viewportFraction: 0.5,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
              ),
            ),
            Gap(40 * SizeConfig.verticalBlock),
            ScrollableListFromCenter(
                children: List.generate(
                    newProductImages.length,
                    (index) => index < newProductImages.length - 1
                        ? Padding(
                            padding: EdgeInsets.only(
                                right: 10.0 * SizeConfig.horizontalBlock),
                            child: ImageSliderSmallItem(
                              productImageAssetPath: newProductImages[index],
                            ),
                          )
                        : ImageSliderSmallItem(
                            productImageAssetPath: newProductImages[index],
                          ))),
          ],
        );
      },
    );
  }
}
