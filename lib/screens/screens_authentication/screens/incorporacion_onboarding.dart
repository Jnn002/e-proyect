import 'package:flutter/material.dart';
//import de utilidades
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:e_proyecto/screens/screens_authentication/controller/onboarding_controller.dart';
//import de widgets
import 'package:e_proyecto/screens/screens_authentication/widgets_exp.dart';
import 'package:get/get.dart';


class IncorporacionOnboarding extends StatelessWidget {
  const IncorporacionOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          //paginas de bievenida
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updtePageIndicator,
            children: const [
              OnboardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
              //boton para saltar todas las paginas
              const OnBoardingSkip(),
              //control por puntos
              const OnBoardingDotNavigation(),
              //Boton principal
              const OnBoardingNextButton(),
        ],
        
      ),
    );
  }
}


