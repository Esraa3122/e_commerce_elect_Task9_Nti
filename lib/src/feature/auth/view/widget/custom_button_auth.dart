import 'package:e_commerce_elect/src/core/style/size_app.dart';
import 'package:flutter/material.dart';

class CustomButtomAuth extends StatelessWidget {
  final void Function()? onPressed;
  final String text;

  const CustomButtomAuth({
    super.key,
    required this.text, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        elevation: 5,
        splashColor: const Color.fromARGB(134, 255, 255, 255),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
        onPressed: () {
          onPressed?.call();
        },
        color: Colors.blueGrey,
        minWidth: 300,
        child: Text(text, style: const TextStyle(fontSize: SizeApp.s16, color: Colors.white),),
      ),
    );
  }
}