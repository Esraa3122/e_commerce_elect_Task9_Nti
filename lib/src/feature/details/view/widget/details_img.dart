import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailsImg extends StatelessWidget {
  const DetailsImg({super.key, required this.img});

  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: CachedNetworkImage(imageUrl: img),
    );
  }
}
