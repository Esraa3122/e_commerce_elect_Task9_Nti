import 'package:e_commerce_elect/src/core/style/color_app.dart';
import 'package:e_commerce_elect/src/feature/home/view/screen/home_screen.dart';
import 'package:e_commerce_elect/src/feature/splash/view/refactors/body_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => CategortScreen()),
       (route) => mounted,);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.kBackgroundColor,
      body: const BodySplashScreen(),
    );
  }
}
