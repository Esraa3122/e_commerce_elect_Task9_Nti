import 'package:e_commerce_elect/src/feature/details/view/screen/details_screen.dart';
import 'package:e_commerce_elect/src/feature/home/model/model/home_modle.dart';
import 'package:e_commerce_elect/src/feature/products/view/widget/description_product.dart';
import 'package:e_commerce_elect/src/feature/products/view/widget/img_product.dart';
import 'package:e_commerce_elect/src/feature/products/view/widget/item_product.dart';
import 'package:e_commerce_elect/src/feature/products/view/widget/price_product.dart';
import 'package:e_commerce_elect/src/feature/products/view/widget/row_rate_fav.dart';
import 'package:e_commerce_elect/src/feature/products/view/widget/text_product.dart';
import 'package:flutter/material.dart';

class ElectronicsBody extends StatelessWidget {
  const ElectronicsBody({super.key, required this.modelElectronics, required this.endPoint});

  final ModelElectronics modelElectronics;
  final String endPoint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(
                modelElectronics: modelElectronics,
                endpoint: endPoint,
              ),
            ),
          );
        },
        child: ItemProduct(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                ImgProduct(image: modelElectronics.image,),
                const SizedBox(
                  height: 5,
                ),
                TextProduct(title: modelElectronics.title,),
                const SizedBox(
                  height: 5,
                ),
                DescriptionProduct(description: modelElectronics.description),
                const SizedBox(
                  height: 10,
                ),
                PriceProduct(price: modelElectronics.price),
                RowRateFav(rate: modelElectronics.rating.rate, count: modelElectronics.rating.count,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
