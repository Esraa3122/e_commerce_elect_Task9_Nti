class ModelRateElectronics {
  final num rate, count;
  ModelRateElectronics({
    required this.rate,
    required this.count,
  });
  factory ModelRateElectronics.fromJson(Map<String, dynamic> json) {
    return ModelRateElectronics(
      rate: json["rate"],
      count: json["count"],
    );
  }
}