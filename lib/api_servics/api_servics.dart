import 'package:blinkitd_emo/model/productresmodel.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  Future<productresmodel> getProducts() async {
    try {
      Response response =
      await dio.get("https://dummyjson.com/products");

      if (response.statusCode == 200) {
        return productresmodel.fromJson(response.data);
      } else {
        throw Exception("Failed to load data");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}