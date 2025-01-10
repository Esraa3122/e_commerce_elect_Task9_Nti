import 'package:e_commerce_elect/src/core/style/color_app.dart';
import 'package:flutter/material.dart';

AppBar appBar(BuildContext context,{required String title}) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: ColorsApp.kBackgroundColor,
    elevation: 0,
    centerTitle: true,
    surfaceTintColor: Colors.transparent,
    title: Row(
      children: [
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(icon: Icon(Icons.shopping_cart_outlined), onPressed: () {},),
        Spacer(),
        Text(
          maxLines: 1,
        overflow: TextOverflow.ellipsis, 
                  title,
                  style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,),
                ),
                Spacer(),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_forward_ios),
        ),
      ],
    ),
  );
}
