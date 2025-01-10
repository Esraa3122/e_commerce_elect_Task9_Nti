import 'package:e_commerce_elect/src/core/style/color_app.dart';
import 'package:flutter/material.dart';

class ButtonNanBar extends StatelessWidget {
  const ButtonNanBar({super.key,});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 17,
      unselectedFontSize: 16,
      showSelectedLabels: true,
      iconSize: 30,
      backgroundColor: ColorsApp.kSecondaryColor,
      selectedItemColor: Colors.grey,
      unselectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_sharp),label: "Car"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorites"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: "Shopping"),
      ],
    );
  }
}
