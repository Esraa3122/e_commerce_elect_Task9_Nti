import 'package:dio/dio.dart';
import 'package:e_commerce_elect/src/feature/home/model/model/home_modle.dart';

class DataElectronics {
  static Dio dio = Dio();
  Future <List<ModelElectronics>> getDataElectronics({required String endPoint}) async {
    var response =
        await dio.get("https://fakestoreapi.com/products/category/$endPoint");
    if (response.statusCode == 200){
      List data = response.data;
      List<ModelElectronics> listElectronics = data.map((e) => ModelElectronics.fromJson(e)).toList();
      return listElectronics;
    }else {
      throw Exception("Failed to load data");
    }
  }
}