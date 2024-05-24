import 'package:e_proyecto/screens/screens_exp.dart';
import 'package:e_proyecto/utils/constants/image_strings.dart';
import 'package:e_proyecto/utils/constants/sizes.dart';
import 'package:e_proyecto/utils/constants/text_strings.dart';
import 'package:e_proyecto/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
//import clase utils y get
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: ()=> Get.offAll(()=> const ForgetPassword()), icon: const Icon(CupertinoIcons.clear))],
      ),
      body:  SingleChildScrollView(
        child: 
        Padding(
          padding:const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            Image(image: const AssetImage(TImages.deliveredEmailIllustration), 
          width: THelperFunctions.screenWidth()*0.6
              ),
              
              const SizedBox(height: TSizes.spaceBtwItems,),
            
            //Title y subtitulo
            Text(TTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
            Text(TTexts.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              
              //botones
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(
              width: double.infinity,
              child: ElevatedButton(
              onPressed: ()=> Get.offAll(()=> const LoginScreen()),
              child: Text(TTexts.done, style: Theme.of(context).textTheme.headlineSmall,),
            ),
            ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              
              SizedBox(
              width: double.infinity,
              child: TextButton(
              onPressed: (){},
              child: Text(TTexts.resendEmail, style: Theme.of(context).textTheme.headlineSmall,),
            ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}