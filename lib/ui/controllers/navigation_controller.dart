import 'package:get/get.dart';

class BottomNavigationController extends GetxController{
  RxInt selectedIndex = 0.obs;

  changeIndex(int index){
      selectedIndex.value = index;
  }
}