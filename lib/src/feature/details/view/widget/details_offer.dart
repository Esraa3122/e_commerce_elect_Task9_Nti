import 'package:e_commerce_elect/src/core/style/color_app.dart';
import 'package:flutter/material.dart';

class DetailsOffer extends StatelessWidget {
  const DetailsOffer({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: ColorsApp.kSecondaryColor)),
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: ColorsApp.kTextColor),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 70,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: ColorsApp.kSecondaryColor)),
          child: Text(
            "Clasic",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: ColorsApp.kSecondaryColor),
          ),
        ),
        Spacer(),
        Container(
          width: 80,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.red),
          child: Text(
            "offer %15",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
