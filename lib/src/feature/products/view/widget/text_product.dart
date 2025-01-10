import 'package:flutter/material.dart';

class TextProduct extends StatelessWidget {
  const TextProduct({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  title,
                  style: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                );
  }
}