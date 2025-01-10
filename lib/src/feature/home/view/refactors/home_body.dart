import 'package:e_commerce_elect/src/core/style/img_app.dart';
import 'package:e_commerce_elect/src/feature/home/view/widget/custom_button.dart';
import 'package:e_commerce_elect/src/feature/products/view/screen/electronics_screen.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ElectronicsScreen(
                            endpoint: "electronics",
                            title: 'Electronics',
                          )));
            },
            title: "ElECTRONICS",
            image: ImageApp.category1),
        const SizedBox(height: 30),
        CustomButton(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ElectronicsScreen(
                            endpoint: "jewelery",
                            title: 'Jewelery',
                          )));
            },
            title: "JEWELERY",
            image: ImageApp.category2),
        const SizedBox(height: 30),
        CustomButton(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ElectronicsScreen(
                            endpoint: "men's%20clothing",
                            title: "Men's Clothing",
                          )));
            },
            title: "MEN'S CLOTHING",
            image: ImageApp.category3),
        const SizedBox(height: 30),
        CustomButton(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ElectronicsScreen(
                            endpoint: "women's%20clothing",
                            title: "Women's Clothing",
                          )));
            },
            title: "WOMEN'S CLOTHING",
            image: ImageApp.category4),
      ],
    ));
  }
}
