import 'package:get/get.dart';
import '../../data/model/product.dart';
import 'package:retrofit_getx_sample/data/repository/app_repository.dart';

class HomeController extends GetxController{
  RxList<Product> productList = <Product>[].obs;

  final repository = AppRepository();

  HomeController(){
    getProductList();
  }

  Future<void> getProductList() async{
    var result = await repository.getProducts();
    productList.value = result.obs;
  }
}