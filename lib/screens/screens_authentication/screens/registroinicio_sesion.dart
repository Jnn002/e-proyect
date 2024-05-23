//import material y utils
import 'package:flutter/material.dart';
import 'package:e_proyecto/utils/util_exp.dart';
//import iconsax
import 'package:iconsax/iconsax.dart';
//import widgets
import 'package:e_proyecto/screens/screens_authentication/widgets_exp.dart';
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
/*         final dark = THelperFunctions.isDarkMode(context);
 */
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            //titulo de pagina
            Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.spaceBtwSections),
            //formulario
            Form(child: Column(
              children: [
                Row(children: [
                  Expanded(
                    child: TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon:  Icon(Iconsax.user)
                      ),
                    ),
                  ),
                  const SizedBox(width: TSizes.spaceBtwInputFields),
                  Expanded(
                    child: TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon:  Icon(Iconsax.user)
                      ),
                    ),
                  ),
                ],
                ),
                  const SizedBox(height: TSizes.spaceBtwInputFields),
                  TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                      labelText: TTexts.username,
                      prefixIcon:  Icon(Iconsax.user_edit)
                      ),
                    ),
                  const SizedBox(height: TSizes.spaceBtwInputFields),
                  TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                      labelText: TTexts.email,
                      prefixIcon:  Icon(Iconsax.direct)
                      ),
                    ),
                  const SizedBox(height: TSizes.spaceBtwInputFields),
                  TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                      labelText: TTexts.phoneNo,
                      prefixIcon:  Icon(Iconsax.call)
                      ),
                    ),
                    
                  const SizedBox(height: TSizes.spaceBtwInputFields),
                  TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                      labelText: TTexts.password,
                      prefixIcon:  Icon(Iconsax.password_check),
                      suffixIcon: Icon(Iconsax.eye_slash)
                      ),
                    ),
                const SizedBox(height: TSizes.spaceBtwItems),
                  //checkbox para aceptar termios y condiciones
                  const TTermsAndConditionsCheckbox(),
                const SizedBox(height: TSizes.spaceBtwSections),
                //boton de registro
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(TTexts.createAccount),
            ),
          ),
              ],
            ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            const TFormDivider(
              dividerText: TTexts.orSignInWith,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            const Row(
              // OPciones de inicio con redes sociales, google
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TSocialButtons(),
                SizedBox(height: TSizes.spaceBtwItems,),
            
              ],
            ),
            ],
          ),
        ),
        ),
    );
  }
}
