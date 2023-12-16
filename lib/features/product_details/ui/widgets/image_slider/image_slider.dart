import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/product_details/cubits/selection/selection_states.dart';
import 'package:slash_product_details_app/features/product_details/cubits/selection/selection_cubit.dart';
import 'package:slash_product_details_app/features/product_details/cubits/variation/variation_cubit.dart';
import 'package:slash_product_details_app/features/product_details/cubits/variation/variation_states.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/image_slider/image_slider_big_item.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/image_slider/image_slider_small_item.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/scrollable_list_from_center/scrollable_list_from_center.dart';

class ImageSlider extends StatefulWidget {
  final List<String> productImages;
  const ImageSlider({super.key, required this.productImages});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  late CarouselController _carouselController;
  @override
  void initState() {
    _carouselController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VariationCubit, VariationState>(
      listener: (context, _) {
        _carouselController.animateToPage(0);
        SelectionCubit.get(context).select(selectionIndex: 0);
      },
      listenWhen: (previous, current) {
        return current is VariationChangedState &&
            current.currentProductVariation.productVariantImages !=
                current.previousProductVariation.productVariantImages;
      },
      buildWhen: (previous, current) {
        return current is VariationChangedState &&
            current.currentProductVariation.productVariantImages !=
                current.previousProductVariation.productVariantImages;
      },
      builder: (context, state) {
        List<String> newProductImages = state is! VariationChangedState
            ? widget.productImages
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
                onPageChanged: (index, reason) {
                  SelectionCubit.get(context).select(selectionIndex: index);
                },
                height: 200 * SizeConfig.verticalBlock,
                viewportFraction: 0.5,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
              ),
              carouselController: _carouselController,
            ),
            Gap(40 * SizeConfig.verticalBlock),
            ScrollableListFromCenter(
                children: List.generate(
                    newProductImages.length,
                    (index) => GestureDetector(
                          onTap: () {
                            _carouselController.animateToPage(index);
                          },
                          child: BlocBuilder<SelectionCubit, SelectionState>(
                            buildWhen: (previous, current) =>
                                current is SelectionSelectedState &&
                                (current.previousSelectionIndex == index ||
                                    current.currentSelectionIndex == index),
                            builder: (context, state) => ImageSliderSmallItem(
                              productImageAssetPath: newProductImages[index],
                              isNotLastItem:
                                  index < newProductImages.length - 1,
                              isSelected: (state is SelectionInitialState &&
                                      index == 0) ||
                                  (state is SelectionSelectedState &&
                                      state.currentSelectionIndex == index),
                            ),
                          ),
                        ))),
          ],
        );
      },
    );
  }
}
