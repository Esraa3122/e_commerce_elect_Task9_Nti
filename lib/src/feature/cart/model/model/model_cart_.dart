class ModelCaerts {
  final String id;
  final num quantity;
  final num totalPrice;
  final String status;
  final String image;
  final String name;
  final num price;

  ModelCaerts({
    required this.id,
    required this.quantity,
    required this.totalPrice,
    required this.status,
    required this.image,
    required this.name,
    required this.price,
  });
  factory ModelCaerts.fromJson(Map<String, dynamic> jsonData) {
    return ModelCaerts(
        id: jsonData['_id'],
        quantity: jsonData["quantity"],
        totalPrice: jsonData["totalPrice"],
        status: jsonData["status"],
        image: jsonData["image"],
        name: jsonData["name"],
        price: jsonData["price"]);
  }
}
