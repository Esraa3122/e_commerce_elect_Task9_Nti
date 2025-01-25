import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:e_commerce_elect/src/feature/fav/model/model_fav.dart';

class FavData {
 final Dio dio = Dio();
  addFav({required String productId}) async {
    var response = await dio.post("https://elwekala.onrender.com/favorite",
        data: {"nationalId": "01009876567876", "productId": productId});
    var responseData = response.data;
    log(responseData.toString());
    return responseData;
  }

  getAllFav() async {
   var response = await dio.get(
        "https://elwekala.onrender.com/favorite",
        data: {"nationalId": "01009876567876",});
    try {
      List responseData = response.data["favoriteProducts"];
      List<ModelFav> list =
          responseData.map((e) => ModelFav.fromJson(e)).toList();
      // log(list[1].image.toString());
      return list;
    } on DioException catch (e) {
      if (e.response != null) {
        log(e.response!.data.toString());
        return e.response!.data;
      }
    }
  }

 deletFav({required String productId}) async {
    var response = await dio.delete("https://elwekala.onrender.com/favorite",
        data: {
          "nationalId": "01009876567876",
          "productId": productId,
        });
    try{
      var data = response.data;
      log(data.toString());
      return data;
    }on DioException catch(e){
      if (e.response != null) {
        log(e.response!.data.toString());
        return e.response!.data;
      }
    }
  }
}
