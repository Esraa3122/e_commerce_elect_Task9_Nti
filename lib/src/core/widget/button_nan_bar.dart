import 'package:e_commerce_elect/src/core/style/color_app.dart';
import 'package:e_commerce_elect/src/feature/fav/view/screen.dart';
import 'package:e_commerce_elect/src/feature/laps/view/screen/home_lab_cat.dart';
import 'package:e_commerce_elect/src/feature/products/view/screen/electronics_screen.dart';
import 'package:e_commerce_elect/src/feature/profile/view/screen/profile_screen.dart';
import 'package:flutter/material.dart';

class ButtonNanBar extends StatefulWidget {
  const ButtonNanBar({
    super.key,
  });


  @override
  State<ButtonNanBar> createState() => _ButtonNanBarState();
}

class _ButtonNanBarState extends State<ButtonNanBar> {

  int _currentIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    ElectronicsScreen(
      endpoint: "",
      title: "",
    ),
    HomeLabCat(),
    FavScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 17,
        unselectedFontSize: 16,
        showSelectedLabels: true,
        iconSize: 30,
        backgroundColor: ColorsApp.kSecondaryColor,
        selectedItemColor: ColorsApp.kTextLightColor,
        unselectedItemColor: ColorsApp.kPrimaryColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "Card"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _currentIndex,
        onTap: _changeItem,
      ),
    );
  }

  void _changeItem(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
