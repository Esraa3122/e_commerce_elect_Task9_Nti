import 'package:e_commerce_elect/src/core/style/color_app.dart';
import 'package:e_commerce_elect/src/core/style/size_app.dart';
import 'package:flutter/material.dart';

class DetailseOldPrice extends StatelessWidget {
  const DetailseOldPrice({super.key, required this.oldPrice});

  final int oldPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("${oldPrice} ر.س",
            style: TextStyle(
                color: ColorsApp.kTextLightColor,
                fontSize: SizeApp.s15,
                decoration: TextDecoration.lineThrough)),
        Spacer(),
        Text("22 تقييم ",
            style: TextStyle(
                color: ColorsApp.kSecondaryColor,
                fontSize: SizeApp.s15,
                decoration: TextDecoration.underline))
      ],
    );
  }
}
