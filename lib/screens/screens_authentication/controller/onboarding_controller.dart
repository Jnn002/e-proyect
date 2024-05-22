import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  //variables

  //Actualizzr el estado de la pagina scroll
  void updtePageIndicator(index){}

  //salta a la pggina seleccionada
  void dotNavigationClick(index){}
  //actualizar el estado de la pagina y se mueve a lanueva pagina
  void nextPage(){}
  //actualiza el estado de la pagina y regresa a la pagina anterior
  void skipPage(){}
}