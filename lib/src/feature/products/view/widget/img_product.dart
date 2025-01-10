import 'package:flutter/material.dart';

class ImgProduct extends StatelessWidget {
  const ImgProduct({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
      image,
      width: 150,
      height: 100,
    ));
  }
}
