import 'package:e_commerce_elect/src/feature/home/model/model/rate_model.dart';

class ModelElectronics {
  final String image, title, category, description;
  final num price, id;
  final ModelRateElectronics rating;
  ModelElectronics({
        required this.id,
        required this.image,
        required this.title,
        required this.price,
        required this.rating,
        required this.category,
        required this.description,
  });
  factory ModelElectronics.fromJson(Map<String, dynamic> data) => ModelElectronics(
            id: data["id"],
            title: data["title"],
            price: data["price"],
            description: data["description"],
            image: data["image"],
            category: data["category"],
            rating: ModelRateElectronics.fromJson(data["rating"]),
      );
}