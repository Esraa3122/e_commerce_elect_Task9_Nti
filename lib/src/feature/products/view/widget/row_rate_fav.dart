import 'package:flutter/material.dart';

class RowRateFav extends StatelessWidget {
  const RowRateFav({super.key, required this.rate, required this.count});

  final num rate;
  final num count;

  @override
  Widget build(BuildContext context) {
    return Row(
                  children: [
                    Text("${rate.toString()}⭐",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("(${count.toString()}review)",
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 15)),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {},color: Colors.blueGrey,),
                    
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {}, color: Colors.red,),
                  ],
                );
  }
}