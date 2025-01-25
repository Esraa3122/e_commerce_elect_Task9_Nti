import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:e_commerce_elect/src/feature/laps/model/model.dart';

class LapDataCat {
  final Dio dio = Dio();
  getAlLLap() async {
    var repo = await dio.get("https://elwekala.onrender.com/product/Laptops");
    try {
      if (repo.statusCode == 200) {
        List repoData = repo.data["product"];
        List<ModelLapCategory> listLap = repoData
            .map(
              (lap) => ModelLapCategory.fromJson(lap),
            )
            .toList();
        // print(listLap[4].image);
        log(listLap[4].image.toString());
        return listLap;
      }
    } on DioException catch (error) {
      if (error.response != null) {
        // print(error.response!.data);
        log(error.response!.data.toString());
        return error.response!.data;
      }
    }
    throw Exception("");
  }
}
