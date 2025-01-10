import 'package:e_commerce_elect/src/core/style/color_app.dart';
import 'package:e_commerce_elect/src/core/style/size_app.dart';
import 'package:flutter/material.dart';

class DetailsTitle extends StatelessWidget {
  const DetailsTitle({super.key, required this.subtitle});

    final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      
      subtitle,
      style: TextStyle(color: ColorsApp.kSecondaryColor,fontSize: SizeApp.s20),
    );
  }
}