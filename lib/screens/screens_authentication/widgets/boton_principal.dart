import 'package:e_proyecto/screens/screens_authentication/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? TColors.primary : TColors.black),
        child: const Icon(Iconsax.arrow_right_3)
      ),
    );
  }
}