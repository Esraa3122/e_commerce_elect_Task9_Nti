import 'package:e_commerce_elect/src/feature/details/view/widget/details_describtion.dart';
import 'package:e_commerce_elect/src/feature/details/view/widget/details_img.dart';
import 'package:e_commerce_elect/src/feature/details/view/widget/details_offer.dart';
import 'package:e_commerce_elect/src/feature/details/view/widget/details_price.dart';
import 'package:e_commerce_elect/src/feature/details/view/widget/details_title.dart';
import 'package:e_commerce_elect/src/feature/details/view/widget/row_color.dart';
import 'package:e_commerce_elect/src/feature/details/view/widget/row_icons.dart';
import 'package:e_commerce_elect/src/feature/home/model/model/home_modle.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.modelElectronics});
      final ModelElectronics modelElectronics;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          DetailsImg(img: modelElectronics.image,),
          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: List.filled(2, BoxShadow(color: Colors.grey)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal:20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailsOffer(name: modelElectronics.category,),
                  SizedBox(height: 20,),
                  DetailsTitle(subtitle: modelElectronics.title,),
                  SizedBox(height: 10,),
                  DetailsDescribtion(subtitle: modelElectronics.description,),
                  SizedBox(height: 10,),
                  DetailsPrice(price: modelElectronics.price, rate: modelElectronics.rating.rate),
                  // DetailseOldPrice(oldPrice: modelElectronics.),
                  RowIcons(),
                ],
              ),
            ),
          ),
           SizedBox(height: 20,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: List.filled(2, BoxShadow(color: Colors.grey)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal:20),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   DetailsDescribtion(subtitle: "اختر اللون",),
                    SizedBox(height: 20,),
                    RowColor(),
                    SizedBox(height: 20,),
                 ],
               ),
            ),
          )
        ],
      ),
    );
  }
}