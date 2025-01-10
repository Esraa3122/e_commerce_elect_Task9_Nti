import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 10,
                )
              ]),
              child: child,
        );
  }
}