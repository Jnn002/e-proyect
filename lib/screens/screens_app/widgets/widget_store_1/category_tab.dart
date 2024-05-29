import 'package:e_proyecto/common/common_exp.dart';
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          const TBrandShowcase(
            images: [
              TImages.productImage10,
              TImages.productImage11,
              TImages.productImage12,
            ],),
          const TBrandShowcase(
            images: [
              TImages.productImage10,
              TImages.productImage11,
              TImages.productImage12,
            ],),
          const SizedBox(height: TSizes.spaceBtwItems),
              //productos
              TSectionHeading(title: 'Te podria gustar esto',onPressed: (){},),
              const SizedBox(height: TSizes.spaceBtwItems),
      
            TGridLayour(itemCount: 4, itemBuilder: (_,index)=> const TProductoCardVertical()),
            const SizedBox(height: TSizes.spaceBtwSections),
        ],
      ),
      ),
      ],
    );
  }
}