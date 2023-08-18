class SswModel {
  final String official;
  final String common;

  SswModel({
    required this.official,
    required this.common,
  });

  factory SswModel.fromJson(Map<String, dynamic> json) {
    return SswModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
