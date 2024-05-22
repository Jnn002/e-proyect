import 'package:e_proyecto/screens/screens_authentication/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:e_proyecto/utils/util_exp.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace, 
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: const Text('Saltar'),
      ),
    );
  }
}

