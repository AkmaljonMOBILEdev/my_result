class TrAraModel {
  final String official;
  final String common;

  TrAraModel({
    required this.official,
    required this.common,
  });

  factory TrAraModel.fromJson(Map<String, dynamic> json) {
    return TrAraModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
