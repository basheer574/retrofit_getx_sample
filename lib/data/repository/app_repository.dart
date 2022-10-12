import 'package:dio/dio.dart';
import 'package:retrofit_getx_sample/data/model/product.dart';
import 'package:retrofit_getx_sample/data/network/api_client.dart';

import 'package:retrofit_getx_sample/utils/constants.dart' as constants;
class AppRepository{
  Future<List<Product>> getProducts(){
    final apiClient = ApiClient(Dio(BaseOptions(contentType: 'application/json')));
    return apiClient.getProductList();
  }
}