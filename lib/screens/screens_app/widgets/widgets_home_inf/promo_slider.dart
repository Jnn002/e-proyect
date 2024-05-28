import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_proyecto/common/common_exp.dart';
import 'package:e_proyecto/screens/screens_app/widgets_exp_app.dart';
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';
//import controller home controoler
import 'package:e_proyecto/screens/screens_app/controllers/home_controllers.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';


class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, 
    required this.banners,

  });
  final List<String> banners;


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        items: banners.map((url)=> TRoundedImage(imagenUrl: url)).toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Center(
          child: Obx(
            ()=> Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                TCircularContainer(
                  margin: const EdgeInsets.only(right: 10),
                  width: 20,
                  height: 4,
                  backgroundColor: controller.carouselCurrentIndex.value == i ? TColors.primary : Colors.grey,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}