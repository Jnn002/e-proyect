import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';


class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key, 
    required this.title, 
    required this.image, 
    this.textColor = TColors.white, 
    this.backgroundColor , 
    this.onTap,
    //= TColors.white

  });
  final String title, image;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ? TColors.black : TColors.white), 
                borderRadius: BorderRadius.circular(100)
              ),
              child:  Center(
                child: Image(image: AssetImage(image), fit: BoxFit.cover, color: dark ? TColors.white : TColors.black,),
              ),
            ),
            //textos de categorias
            const SizedBox(height: TSizes.spaceBtwItems/3.5),
            SizedBox(width: 55,child: Text(title
              , 
              style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              ),),
            ],
        ),
      ),
    );
  }
}