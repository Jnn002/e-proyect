import 'package:flutter/material.dart';
//import utils
import 'package:e_proyecto/utils/util_exp.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: TColors.grey),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: (){},
        icon: const Image(image: AssetImage(
          TImages.google), height: TSizes.iconMd, width: TSizes.iconMd),
      ),
    );
  }
}
