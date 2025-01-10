import 'package:e_commerce_elect/src/core/style/color_app.dart';
import 'package:flutter/material.dart';

class DetailsDescribtion extends StatelessWidget {
  const DetailsDescribtion({super.key, required this.subtitle});

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: TextStyle(color: ColorsApp.kTextLightColor,),
    );
  }
}
