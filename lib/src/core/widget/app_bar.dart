import 'package:e_commerce_elect/src/core/style/color_app.dart';
import 'package:e_commerce_elect/src/core/style/text_style.dart';
import 'package:flutter/material.dart';


AppBar appBarHome({required String title}) {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.white, size: 25),
    backgroundColor: ColorsApp.kSecondaryColor,
    elevation: 0.0,
    title: Text(
      title,
      style: appBarHomeStyle(),
    ),
    centerTitle: true,
  );
}
