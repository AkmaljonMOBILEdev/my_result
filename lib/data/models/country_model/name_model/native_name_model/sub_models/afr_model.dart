class AfrModel {
  final String official;
  final String common;

  AfrModel({
    required this.official,
    required this.common,
  });

  factory AfrModel.fromJson(Map<String, dynamic> json) {
    return AfrModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
