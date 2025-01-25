class ModelFav {
  final String id;
  final String image;
  final num price;
  final String name;
  ModelFav({required this.image, required this.price, required this.name, required this.id,});

  factory ModelFav.fromJson(Map<String, dynamic> jsonData) {
    return ModelFav(
        image: jsonData["image"],
        name: jsonData["name"],
        price: jsonData["price"], id: jsonData['_id']);
  }
}
