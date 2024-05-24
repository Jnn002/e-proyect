import 'package:e_proyecto/screens/screens_authentication/screens/incorporacion_onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import utils
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        automaticallyImplyLeading: false,
      actions: [IconButton(onPressed: ()=> Get.offAll(()=> const LoginScreen()),
      icon: const Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            // imagen
            children: [
              Image(image: const AssetImage(TImages.deliveredEmailIllustration), width: THelperFunctions.screenWidth()*0.6
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
            //Title y subtitulo
            Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
            Text('Soporte, test@test.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
            Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
            //botones
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
              onPressed: ()=> Get.offAll(()=> const SuccessScreen()),
              child: Text(TTexts.tContinue, style: Theme.of(context).textTheme.headlineMedium,),
            ),
            ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(
              width: double.infinity,
              child: ElevatedButton(
              onPressed: ()=> Get.offAll(()=> const SuccessScreen()),
              child: Text(TTexts.resendEmail, style: Theme.of(context).textTheme.headlineMedium,),
            ),
            ),
            ],        
          ),
          ),
      ),
    );
  }
}