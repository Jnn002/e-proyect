import 'package:e_proyecto/common/common_exp.dart';
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key, 
    required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(children: [
        // marca con productos
        const TBrandCard(showBorder: false,),
        const SizedBox(height: TSizes.spaceBtwItems),

          //imagens de la marca
          Row(children: images.map((image) => brandTopProductImagewidget(image, context)).toList(),
          ),
      ],),
    );
  }
}

Widget brandTopProductImagewidget(String image, context){
  return Expanded(
    child: TRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(right: TSizes.sm),
    
      backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
      child: Image(fit : BoxFit.contain, image: AssetImage(image),),
      ),
    );
}
