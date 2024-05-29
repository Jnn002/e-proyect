import 'package:e_proyecto/common/common_exp.dart';
import 'package:e_proyecto/screens/screens_app/widgets_exp_app.dart';
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
export 'package:e_proyecto/screens/screens_app/widgets_exp_app.dart';



class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Tienda', style: Theme.of(context).textTheme.headlineMedium,),
          actions: [TCartCounterIcon(onPressed: (){})],
      
        ),
      body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled){
        return[
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
            expandedHeight: 440,
      
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children:  [
                  //? area de barra de busqueda
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TSearchContainer(
                    onTap: (){},
                    icon: Iconsax.search_normal,
                    text: 'Buscar productos',
                    showBackgroud: false,
                    showBorder: true,
                    padding: EdgeInsets.zero,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
      
                  //! AREA DE FUNCIONALIDADES
                  TSectionHeading(title: 'Marcas destacadas', onPressed: (){},),
                  const SizedBox(height: TSizes.spaceBtwItems/1.5),
      
                  TGridLayour(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_,index){
                    return TBrandCard(
                      showBorder: true,
                      onTap: (){},
                    );
                  },),
      
                ],
              ),
            ),
            //barra media con opciones para categoiras
            bottom:const TTabBar(
              tabs: [
                Tab(child: Text('Depoertes'),),
                Tab(child: Text('Muebles'),),
                Tab(child: Text('Electronicos'),),
                Tab(child: Text('Ropa'),),
                Tab(child: Text('Cosmeticos'),),
              ],
            ),
          ),
        ];
      },
      //cuadro con img de una marca y productos
      body: const TabBarView(
        children: [
          TCategoryTab(),
        ],
      ),
      ),
      ),
    );
  }
}


