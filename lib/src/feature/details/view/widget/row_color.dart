import 'package:e_commerce_elect/src/core/style/color_app.dart';
import 'package:flutter/material.dart';

class RowColor extends StatelessWidget {
  const RowColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: ColorsApp.kBackgroundColor,
        ),
        SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: ColorsApp.kSecondaryColor,
        ),
        SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.black,
        ),
        SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey,
        ),
      ],
    );
  }
}
