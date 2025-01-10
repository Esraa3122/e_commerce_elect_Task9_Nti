import 'package:e_commerce_elect/src/core/style/color_app.dart';
import 'package:e_commerce_elect/src/core/widget/app_bar.dart';
import 'package:e_commerce_elect/src/feature/home/view/refactors/home_body.dart';
import 'package:flutter/material.dart';


class CategortScreen extends StatelessWidget {
  const CategortScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.kPrimaryColor,
      appBar: appBarHome(title: "Category",),
      body: HomeBody(),
    );
  }
}
