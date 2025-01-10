import 'package:e_commerce_elect/src/core/style/size_app.dart';
import 'package:flutter/material.dart';

class DetailsPrice extends StatelessWidget {
  const DetailsPrice({super.key, required this.price, required this.rate});

  final num price;
  final num rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Price: ${price}\$",
            style: TextStyle(color: Colors.red, fontSize: SizeApp.s20)),
        Spacer(),
        Text("${rate}⭐", style: TextStyle( fontSize: SizeApp.s20))
      ],
    );
  }
}
