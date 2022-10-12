import 'package:get/get.dart';
import 'package:retrofit_getx_sample/ui/controllers/home_controller.dart';
import 'package:retrofit_getx_sample/ui/controllers/navigation_controller.dart';

class AppBindings implements Bindings{

  @override
  void dependencies() {
      Get.put(HomeController(),permanent: true);
      Get.put(BottomNavigationController(),permanent: true);
  }
}