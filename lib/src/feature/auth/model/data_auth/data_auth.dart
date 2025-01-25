import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:e_commerce_elect/src/core/helper/cash_data.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataAuth {
  final Dio dio = Dio();
  postData(
      {required name,
      required email,
      required phone,
      required nationalId,
      required gender,
      required password,
      required token,
      required profileImage}) async {
    var repo =
        await dio.post("https://elwekala.onrender.com/user/register", data: {
      "name": name,
      "email": email,
      "phone": phone,
      "nationalId": nationalId,
      "gender": gender,
      "password": password,
      "token": token,
      "profileImage": profileImage
    });
    try {
      var data = repo.data;
      if (kDebugMode) {
        print(repo.statusCode);
        print(data["message"]);
      }
      return data;
    } on DioException catch (e) {
      if (e.response != null) {
        log(e.response!.data["message"].toString());
        var failure = e.response!.data["message"];
        return failure;
      }
    }
  }


  loginData({required email, required password}) async {
    var response =
        await dio.post("https://elwekala.onrender.com/user/login", data: {
      "email": email,
      "password": password,
    });
    try {
      var data = response.data;
      if (kDebugMode) {
        print(response.statusCode);
        print(data["message"]);
        print(data["token"]);
      }
      var nowToken = data["user"]["token"];
      var idData = data["user"]["nationalId"];
      Cash.shared!.setString("token", nowToken);
      Cashnjf.sharedPreferences!.setString("esraa", idData);
      if (kDebugMode) {
        print(idData);
        print("Id");
      }
      return data;
    } on DioException catch (e) {
      if (e.response != null) {
        log(e.response!.data["message"].toString());
        var failure = e.response!.data["message"];
        return failure;
      }
    }
  }
}


class Cashnjf {
  static SharedPreferences? sharedPreferences;
  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }
}
