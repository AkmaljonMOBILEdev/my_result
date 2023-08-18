class TrDeuModel {
  final String official;
  final String common;

  TrDeuModel({
    required this.official,
    required this.common,
  });

  factory TrDeuModel.fromJson(Map<String, dynamic> json) {
    return TrDeuModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
