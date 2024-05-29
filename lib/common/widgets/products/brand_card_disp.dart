import 'package:e_proyecto/common/common_exp.dart';
import 'package:e_proyecto/screens/screens_app/widgets_exp_app.dart';
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';


class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, 
    required this.showBorder, 
    this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onTap,
    child: TRoundedContainer(
    padding: const EdgeInsets.all(TSizes.sm),
    showBorder: showBorder,
    backgroundColor: Colors.transparent,
    child: Row(
      children: [
      // Iconos de marcas
      Flexible(
        child: TCircularImage(
          isNetworkImage: false,
          image: TImages.clothIcon,
          backgroundColor: Colors.transparent,
          overlayColor: THelperFunctions.isDarkMode(context)
            ? TColors.white
            : TColors.black,
        ),
      ),
      const SizedBox(height: TSizes.spaceBtwItems / 2),
      // TEXTOS PARA PRODUCTOS
      Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const TBrandTittlewithVerifiedIcon(
            title: 'Adidas',
            brandTextSize: TextSize.large,
          ),
          Text(
            '250 Productos',
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          ],
        ),
      ),
      ],
    ),
    ),
                      );
  }
}