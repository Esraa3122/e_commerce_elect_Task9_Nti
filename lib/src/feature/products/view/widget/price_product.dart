import 'package:flutter/material.dart';

class PriceProduct extends StatelessWidget {
  const PriceProduct({super.key, required this.price});

  final num price;

  @override
  Widget build(BuildContext context) {
    return Text("Price: ${price.toString()}\$",
        style: const TextStyle(color: Colors.blueGrey, fontSize: 22));
  }
}
