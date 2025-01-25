import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:e_commerce_elect/src/feature/auth/model/data_auth/data_auth.dart';
import 'package:e_commerce_elect/src/feature/profile/model/profile_model.dart';
import 'package:flutter/foundation.dart';


var getT = Cashnjf.sharedPreferences!.get("token");

class DataProfile {
  Dio dio = Dio();
  getProfile() async {
    var response = await dio.post("https://elwekala.onrender.com/user/profile",
        data: {"token": getT});
    try {
      var responseData = response.data;
      // print(responseData["user"]["name"]);
      log(responseData["user"]["name"].toString());
      var user = ProfileModel.fromJSON(responseData);
      if(kDebugMode){
         print(user.profileUserModel.name);
         print(user.profileUserModel.profileImage);
      }
      // print(user.profileUserModel.name);
      // print(user.profileUserModel.profileImage);
      return user;
    } on DioException catch (error) {
      if (error.response != null) {
        return error.response!.data;
      }
    }
  }
}
