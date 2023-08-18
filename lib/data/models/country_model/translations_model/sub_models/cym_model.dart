class TrCymModel {
  final String official;
  final String common;

  TrCymModel({
    required this.official,
    required this.common,
  });

  factory TrCymModel.fromJson(Map<String, dynamic> json) {
    return TrCymModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
