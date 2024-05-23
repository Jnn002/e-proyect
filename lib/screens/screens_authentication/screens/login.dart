import 'package:flutter/material.dart';
import 'package:e_proyecto/common/common_exp.dart';
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:iconsax/iconsax.dart';
//import widgets
import 'package:e_proyecto/screens/screens_authentication/widgets_exp.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children:[
            //parte superior
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Image(
              height: 150,
              image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo)
              ),
              Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
              Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: TSizes.sm),
            ],   
            ),
            Form(child: 
            Padding(
              padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
              child: Column(
                children: [
                  //email input
                  TextFormField(
                    decoration: const InputDecoration(prefixIcon:  Icon(Iconsax.direct_right), 
                    labelText: TTexts.email),
                  ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    //password input
                  TextFormField(
                    decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check), 
                    labelText: TTexts.password, 
                    suffixIcon: Icon(Iconsax.eye_slash)),
                ),
                    const SizedBox(height: TSizes.spaceBtwInputFields / 2 ),
                    //botones para Recuperar contraseña y guardar contraseña(cookie)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Recordar, checkbox para guardar contraseña
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
                      const Text(TTexts.rememberMe),
                    ],
                  ),
                  //Olvidaste tu contraseña, ir a recuperar
                  TextButton(
                    onPressed: (){},
                    child: const Text(TTexts.forgetPassword)),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Boton de inicio de sesion
              SizedBox(width: double.infinity, child: ElevatedButton(
                onPressed: (){},
                child: const Text(TTexts.signIn),
                ),),
                // separador entre items
                const SizedBox(height: TSizes.spaceBtwItems,),
              
              
              //Boton para crear cuenta
              SizedBox(width: double.infinity, child: OutlinedButton(
                onPressed: (){},
                child: const Text(TTexts.createAccount),
                ),),
                const SizedBox(height: TSizes.spaceBtwItems,),
                ],
              ),
            ),
            ),
            //divisor des espacio
            const TFormDivider(
              dividerText: TTexts.orSignInWith,
            ),
              const SizedBox(height: TSizes.spaceBtwSections),
            Row(
              // OPciones de inicio con redes sociales, google
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: TColors.grey),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon: const Image(image: AssetImage(
                      TImages.google), height: TSizes.iconMd, width: TSizes.iconMd),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
              ],

            )

            ],
          ),
        ),
      ),
    );
  }
}

