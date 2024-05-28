import 'package:flutter/material.dart';
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:iconsax/iconsax.dart';


class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });
  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon: Icon(Iconsax.shopping_bag, color: iconColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: TColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2', style: Theme.of(context).textTheme.labelSmall!.apply(color: TColors.white, fontSizeFactor: 0.8)),
            ),
          ),
        )
      ],
    );
  }
}