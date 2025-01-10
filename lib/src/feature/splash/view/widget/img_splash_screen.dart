import 'package:e_commerce_elect/src/core/style/img_app.dart';
import 'package:flutter/material.dart';

class ImgSplashScreen extends StatelessWidget {
  const ImgSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(ImageApp.logoSplashScreen,
          width: 300,height:200);
  }
}