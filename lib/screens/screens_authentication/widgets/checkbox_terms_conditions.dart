import 'package:flutter/material.dart';
//imort utils
import 'package:e_proyecto/utils/util_exp.dart';

class TTermsAndConditionsCheckbox extends StatelessWidget {
  const TTermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      // politicas de privacidad y terminos de uso
      children: [
        SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value) {})),        
        const SizedBox(height: TSizes.spaceBtwItems),
        Text.rich(TextSpan(
          children: [
              TextSpan(text: '${TTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: '${TTexts.privacyPolicy} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? TColors.white : TColors.primary)),
              TextSpan(text: '${TTexts.and} ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: '${TTexts.termsOfUse} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? TColors.white : TColors.primary)),
          ]),
        ),
      ],);
  }
}