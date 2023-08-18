class TrHrvModel {
  final String official;
  final String common;

  TrHrvModel({
    required this.official,
    required this.common,
  });

  factory TrHrvModel.fromJson(Map<String, dynamic> json) {
    return TrHrvModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
