import 'package:flutter/material.dart';
import 'package:get/get.dart';

//export de nuestro controller
export 'package:e_proyecto/screens/screens_authentication/controller/onboarding_controller.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  Rx<int>currentPageIndex = 0.obs;

  //Actualizzr el estado de la pagina scroll
  void updtePageIndicator(index) => currentPageIndex.value = index;

  //salta a la pggina seleccionada por nuestros botones
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index.toDouble());
  }
  //actualizar el estado de la pagina y se mueve a lanueva pagina
  void nextPage(){
    if(currentPageIndex.value == 2){
      //Get.to(LoginScreen());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //actualiza el estado de la pagina y se mueve a la pagina final
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}