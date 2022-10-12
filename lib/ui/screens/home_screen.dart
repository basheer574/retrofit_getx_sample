import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:retrofit_getx_sample/ui/controllers/home_controller.dart';
import 'package:retrofit_getx_sample/ui/widgets/product_listview.dart';

class HomeScreen extends StatefulWidget {

  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    var homeController = Get.put(HomeController(),permanent: true);
    return SafeArea(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('BProduct',style: TextStyle(
                    fontSize: 20.0
                  )),
                  Icon(Icons.add,size: 25.0),
                ]
              ),
            ),
          ),
          Obx(()=> homeController.productList.isEmpty ? SpinKitHourGlass(color: Colors.indigoAccent)
              : Expanded(child: ProductTile(products: homeController.productList.value)))
        ],
      ),
    );
  }
}
