import 'package:get/get.dart';
//export de esta clase
export 'package:e_proyecto/screens/screens_app/controllers/home_controllers.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carouselCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carouselCurrentIndex.value = index;
  }
}
