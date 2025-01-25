import 'package:flutter/material.dart';

class CircleImg extends StatelessWidget {
  const CircleImg({super.key, required this.img});

  final String img;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.blue,
      child: Image.asset(img), // Replace with your actual image path
    );
  }
}