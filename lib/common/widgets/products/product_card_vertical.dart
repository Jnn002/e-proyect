import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';
//import common_exp
import 'package:e_proyecto/common/common_exp.dart';
//import super widget
import 'package:e_proyecto/super_widget.dart';
import 'package:iconsax/iconsax.dart';

class TProductoCardVertical extends StatelessWidget {
  const TProductoCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onDoubleTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
          
          ),
      child: Column(
        children: [
          // thumbnail
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.darkerGrey : TColors.white,
            child: Stack(
              children: [
                //! pendiente de revisar, esta clase ajusta el fondo para nuestros productos
                const TRoundedImage(imagenUrl: TImages.productImage1, applyImageRadius: true,),
                // producto img
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                  ),
                ),
                //boton de añaidr a favorito
                const Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(
                    icon: Iconsax.heart,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          // detalles producto
          Padding(padding: const EdgeInsets.only(left: TSizes.sm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TProductTittleText(title: 'Tenis NIke, BlueStyle', smallsize: true),
              SizedBox(height: TSizes.spaceBtwItems/3),
              Row(
                children: [
                  Text('Nike', overflow: TextOverflow.ellipsis, maxLines: 1, style: Theme.of(context).textTheme.labelMedium,),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  const Icon(Iconsax.verify5, color : TColors.primary, size: TSizes.iconXs,),
                ],
              ),

            ],
          ),
          ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.sm),
                    child: const TProductpriceText(
                      currencySign: 'Q',
                      price: '720',
                    ),
                  ),
                  Container(decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child:const SizedBox(
                    width: TSizes.iconLg*1.2,
                    height: TSizes.iconLg*1.2,
                    child: Center(child: Icon(Iconsax.add, color: TColors.white, ))),
                  ),
                ],
              ),
        ],
      ),
      ),
    );
  }
}


