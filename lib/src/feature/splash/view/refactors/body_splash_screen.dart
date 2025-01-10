import 'package:e_commerce_elect/src/feature/splash/view/widget/animation_splash_screen.dart';
import 'package:e_commerce_elect/src/feature/splash/view/widget/img_splash_screen.dart';
import 'package:flutter/material.dart';

class BodySplashScreen extends StatelessWidget {
  const BodySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ImgSplashScreen(),
          AnimationSplashScreen()
        ],
      ),
    );
  }
}