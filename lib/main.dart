import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retrofit_getx_sample/app_bindings.dart';
import 'package:retrofit_getx_sample/ui/controllers/navigation_controller.dart';
import 'package:retrofit_getx_sample/ui/screens/add_screen.dart';
import 'package:retrofit_getx_sample/ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var pages = [HomeScreen(), AddScreen()];

  @override
  Widget build(BuildContext context) {
    var bottomNavigationController =
        Get.put(BottomNavigationController(), permanent: true);
    return GetMaterialApp(
      initialBinding: AppBindings(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Obx(
          () => IndexedStack(
            index: bottomNavigationController.selectedIndex.value,
            children: pages,
          ),
        ),
        bottomNavigationBar: Obx(
          () => ConvexAppBar(
              initialActiveIndex:
                  bottomNavigationController.selectedIndex.value,
              backgroundColor: Colors.indigoAccent,
              elevation: 4.0,
              items: const [
                TabItem(icon: Icons.home),
                TabItem(icon: Icons.add),
                TabItem(icon: Icons.ac_unit),
                TabItem(icon: Icons.access_alarm)
              ],
              onTap: (int index) {
                setState(() {
                  bottomNavigationController.changeIndex(index);
                });
              }),
        ),
      ),
      title: 'Retrofit Getx Demo',
    );
  }
}
