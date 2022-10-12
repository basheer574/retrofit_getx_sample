import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit_getx_sample/data/model/product.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: 'https://makeup-api.herokuapp.com/api/v1/')
abstract class ApiClient{
  factory ApiClient(Dio dio,{String? baseUrl}) = _ApiClient;
  @GET('/products.json')
  Future<List<Product>> getProductList();
}