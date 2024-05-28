//import 'package:e_proyecto/common/widgets/curve_edges.dart';
//import 'package:e_proyecto/utils/util_exp.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_proyecto/common/common_exp.dart';
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';
//import de widgets screens_app
import 'package:e_proyecto/screens/screens_app/widgets_exp_app.dart';
import 'package:iconsax/iconsax.dart';
//import de widgets common
//import de widgets de la aplicacion

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
              //area de header, header azul
            TPrimaryHeaderContainer(
              child:Column(
              children: [
                // appbar de nuestra pagina home
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                // barra de Busqueda
                TSearchContainer(
                  text: 'Buscar',
                  icon: Iconsax.search_normal,
                ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  // categorias
                  Padding(padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                    TSectionHeading(
                      title: 'Categorias populares',
                      showActionsButton: false,
                      buttonTitle: 'Ver todo',
                      textColor: TColors.white,
                    ),
                      const SizedBox(height: TSizes.spaceBtwItems),

                    // categorias
                    THomeCategories(),
                  ],),
                  ),
              ],
            ),
            ),
            // area de productos o body
            Padding (
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child:  TPromoSlider(
                banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3,
                ],
              ),
            
              )
          ],
        ), 
      ),
    );
  }
}


