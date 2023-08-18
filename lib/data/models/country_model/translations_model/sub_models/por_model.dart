class TrPorModel {
  final String official;
  final String common;

  TrPorModel({
    required this.official,
    required this.common,
  });

  factory TrPorModel.fromJson(Map<String, dynamic> json) {
    return TrPorModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
