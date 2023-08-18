class TrRusModel {
  final String official;
  final String common;

  TrRusModel({
    required this.official,
    required this.common,
  });

  factory TrRusModel.fromJson(Map<String, dynamic> json) {
    return TrRusModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
