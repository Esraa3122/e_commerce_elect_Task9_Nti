import 'package:e_commerce_elect/src/core/style/size_app.dart';
import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({super.key, required this.title, required this.data});

  final String title;
  final IconData data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        width: 320,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 245, 241, 241),
            boxShadow: const [
              BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 2,
                color: Colors.black12,
              ),
            ]),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: SizeApp.s30,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                data,
                size: 24,
                color: Colors.blueGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
