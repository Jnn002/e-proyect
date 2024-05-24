import 'package:e_proyecto/common/common_exp.dart';
import 'package:e_proyecto/screens/screens_authentication/screens/incorporacion_onboarding.dart';
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Padding(padding: TSpacingStyle.paddingWithAppBarHeight*2,
        child: Column(children: [
          Image(image: const AssetImage(TImages.staticSuccessIllustration), 
          width: THelperFunctions.screenWidth()*0.6
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
            //Title y subtitulo
            Text(TTexts.yourAccountCreatedTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
            Text(TTexts.yourAccountCreatedSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              //botones
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(
              width: double.infinity,
              child: ElevatedButton(
              onPressed: ()=> Get.offAll(()=> const LoginScreen()),
              child: Text(TTexts.tContinue, style: Theme.of(context).textTheme.headlineSmall,),
            ),
            ),
        ],),
        ),
      ),
    );
  }
}
