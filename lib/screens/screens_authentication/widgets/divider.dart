import 'package:flutter/material.dart';
//import utils
import 'package:e_proyecto/utils/util_exp.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.dividerText

  });
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row (
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Divider(color: dark ? TColors.darkGrey : TColors.grey, thickness: 0.5, endIndent: 5, indent: 60),
      Text(dividerText, style: Theme.of(context).textTheme.labelMedium,),
        Divider(color: dark ? TColors.darkGrey : TColors.grey, thickness: 0.5, endIndent: 60, indent: 5),
      ],
    );
  }
}