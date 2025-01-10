import 'package:e_commerce_elect/src/core/style/size_app.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, required this.title, required this.image});

  final void Function()? onTap;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
                  onTap: onTap,
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(2, 2),
                            blurRadius: 3,
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
                            style: TextStyle(
                              fontSize: SizeApp.s20,
                              color: Colors.black,
                            ),
                          ),
                          // const SizedBox(
                          //   width: 10,
                          // ),
                          Image.network(
                            image,
                            height: 50,
                          )
                        ],
                      ),
                    ),
                  ),
                );
  }
}