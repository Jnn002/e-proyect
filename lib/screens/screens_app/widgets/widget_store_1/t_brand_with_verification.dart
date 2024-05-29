import 'package:e_proyecto/screens/screens_app/widgets_exp_app.dart';
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class TBrandTittlewithVerifiedIcon extends StatelessWidget {
  const TBrandTittlewithVerifiedIcon({
    super.key, 
    this.textColor, 
    this.maxLines = 1, 
    required this.title, 
    this.iconColor = TColors.primary, 
    this.textAlign = TextAlign.center, 
    this.brandTextSize = TextSize.small,
  });
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSize brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
    children: [
      Flexible(child: TBrandTitleText(
        title: title, 
        maxLines: maxLines, 
        color: textColor, 
        textAlign: textAlign, 
        brandTextSize: brandTextSize,
        ),),
      const SizedBox(width: TSizes.xs),
      Icon(Iconsax.verify5, color : iconColor, size: TSizes.iconXs,),
    ],
                  );
  }
}