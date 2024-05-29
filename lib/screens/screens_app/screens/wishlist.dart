import 'package:e_proyecto/common/common_exp.dart';
import 'package:e_proyecto/screens/screens_app/screens/home.dart';
import 'package:e_proyecto/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(

        // encabezado de la pantalla
        showBackArrow: false,
        title: Text('Lista de deseos', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCircularIcon(icon: Iconsax.add, onPressed: ()=> Get.to(const HomeScreen()))
        ],

      ),
      //cuperpo de la pantalla
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            TGridLayour(itemCount: 3, itemBuilder: (_, index)=> const TProductoCardVertical())
          ],
        ),
        
        ),
      ),
    );
  }
}