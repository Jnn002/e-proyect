import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
//export para poder ser llamado en otras partes de la aplicacion
export 'package:e_proyecto/main/navigation_menu.dart';
//import para llamar a las pantallas de screens
import 'package:e_proyecto/screens/screens_exp.dart';


class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=> controller.selectedIndex.value= index,
          backgroundColor: darkMode ? TColors.black : TColors.white,
          indicatorColor: darkMode ? TColors.white.withOpacity(0.1) : TColors.black.withOpacity(0.1),
          
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Inicio'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Tienda'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Favoritos'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Perfil'),
          ],
        ),
      ),
      body: Obx (()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens =[
    const HomeScreen(),
    const StoreScreen(),
    const FavouriteScreen(),
    Container(color: Colors.pink,),
  ];
  //void updateIndex(int index) => selectedIndex.value = index;
}