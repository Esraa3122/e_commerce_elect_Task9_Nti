import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:e_commerce_elect/src/feature/cart/model/model/model_cart_.dart';




class DataCart {
  final Dio dio = Dio();

  addCart({required String productId}) async {
    var response = await dio.post("https://elwekala.onrender.com/cart/add",
        data: {"nationalId": "01056710052789", "productId": productId, "quantity": "1"});
    try {
      var dataResponse = response.data;
      log(dataResponse.toString());
      return dataResponse;
    } on DioException catch (e) {
      if (e.response != null) {
        log(e.response!.data.toString());
        return e.response!.data;
      }
    }
  }

  getAlLCarts() async {
    var repo = await dio.get("https://elwekala.onrender.com/cart/allProducts",
        data: {"nationalId": "01056710052789"});
    try {
      if (repo.statusCode == 200) {
        List datarepo = repo.data["products"];
        List<ModelCaerts> listcar = datarepo
            .map(
              (lap) => ModelCaerts.fromJson(lap),
            )
            .toList();
        return listcar;
      }
    } on DioException catch (error) {
      if (error.response != null) {
        log(error.response!.data);
        return error.response!.data;
      }
    }
  }

  deletCart({required String productId}) async {
    var response = await dio.delete("https://elwekala.onrender.com/cart/delete",
        data: {
          "nationalId": "01056710052789",
          "productId": productId,
          "quantity": "1"
        });
    var data = response.data;
    return data;
  }
}


