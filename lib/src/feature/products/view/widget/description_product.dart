import 'package:flutter/material.dart';

class DescriptionProduct extends StatelessWidget {
  const DescriptionProduct({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        description,
        style: const TextStyle(
            color: Color.fromARGB(255, 85, 84, 84), fontSize: 14));
  }
}
