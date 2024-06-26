import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';
class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key, 
    this.width = 56,
    this.height = 56, 
    this.overlayColor, 
    this.backgroundColor, 
    required this.image, 
    this.fit = BoxFit.cover, 
    this.isNetworkImage = false, 
    this.padding = TSizes.sm,
  });
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (THelperFunctions.isDarkMode(context) ? TColors.black : TColors.light),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
        color: overlayColor,
        ),
      ),
    );
  }
}