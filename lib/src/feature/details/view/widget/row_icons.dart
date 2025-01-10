import 'package:flutter/material.dart';

class RowIcons extends StatelessWidget {
  const RowIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 160,
          height: 30,
          decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Shopping Now", style: TextStyle(color: Colors.white,fontSize: 17),),
              SizedBox(width: 8),
              Icon(Icons.add_shopping_cart_outlined, color:   Colors.white,),
            ],
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_border),
          color: Colors.red,
        ),
        SizedBox(
          width: 8,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.share))
      ],
    );
  }
}
