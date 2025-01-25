class ModelLapCategory {
  final String id;
  final String status;
  final String image;
  final String description;
  final String category;
  final num price;
  ModelLapCategory({
    required this.id,
    required this.status,
    required this.image,
    required this.description,
    required this.category,
    required this.price,
  });
  factory ModelLapCategory.fromJson(Map<String, dynamic>jsonData){
    return ModelLapCategory(
      id: jsonData['_id'],
      status: jsonData['status'],
      image: jsonData['image'],
      description: jsonData['description'],
      category: jsonData['category'],
      price: jsonData['price'],
    );
  }
}

