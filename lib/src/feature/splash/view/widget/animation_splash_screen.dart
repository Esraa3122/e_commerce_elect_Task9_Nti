import 'package:e_commerce_elect/src/core/style/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AnimationSplashScreen extends StatelessWidget {
  const AnimationSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SpinKitChasingDots(
      color: ColorsApp.kSecondaryColor,
      size: 200.0,
    );
  }
}
