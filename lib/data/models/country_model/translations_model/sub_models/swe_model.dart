class TrSweModel {
  final String official;
  final String common;

  TrSweModel({
    required this.official,
    required this.common,
  });

  factory TrSweModel.fromJson(Map<String, dynamic> json) {
    return TrSweModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
