import 'package:e_commerce_elect/src/core/style/color_app.dart';
import 'package:e_commerce_elect/src/core/style/text_style.dart';
import 'package:e_commerce_elect/src/feature/home/view/refactors/home_body.dart';
import 'package:flutter/material.dart';


class DrawerHome extends StatelessWidget {
  const DrawerHome({super.key, this.onTap});
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Drawer(
        shadowColor: Colors.black12,
        // surfaceTintColor: Colors.black,
        backgroundColor: ColorsApp.kBackgroundColor,
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 100,
          color: Colors.blueGrey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
               IconButton(
                icon: Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.pop(context);
                },
                iconSize: 25,
                color: Colors.white,
                ),
                const SizedBox(width: 50),
                 Text("Categroys",
                    style: drowerHomeStyle()
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 100),
        HomeBody(),
      ],
    ));
  }
}
