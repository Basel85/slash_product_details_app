import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/image_slider/image_slider_big_item.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/image_slider/image_slider_small_item.dart';
import 'package:slash_product_details_app/features/product_details/ui/widgets/scrollable_list_from_center/scrollable_list_from_center.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (context, index, realIndex) {
            return const ImageSliderBigItem();
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
                5,
                (index) => index < 4
                    ? Padding(
                        padding: EdgeInsets.only(
                            right: 10.0 * SizeConfig.horizontalBlock),
                        child: const ImageSliderSmallItem(),
                      )
                    : const ImageSliderSmallItem())),
      ],
    );
  }
}
