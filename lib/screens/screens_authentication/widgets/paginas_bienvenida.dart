// Widget Bienvenida


import 'package:flutter/material.dart';
import 'package:e_proyecto/utils/util_exp.dart';
export 'package:e_proyecto/screens/screens_authentication/widgets/paginas_bienvenida.dart';
class OnboardingPage extends StatelessWidget {
  const OnboardingPage ({
    super.key, 
    required this.image,
    required this.title, 
    required this.subtitle
  });
  final String image, title, subtitle;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            height: THelperFunctions.screenHeight() * 0.6,
            width: THelperFunctions.screenWidth() * 0.8,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
