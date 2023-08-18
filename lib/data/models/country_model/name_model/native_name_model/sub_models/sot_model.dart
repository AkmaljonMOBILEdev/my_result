class SotModel {
  final String official;
  final String common;

  SotModel({
    required this.official,
    required this.common,
  });

  factory SotModel.fromJson(Map<String, dynamic> json) {
    return SotModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
