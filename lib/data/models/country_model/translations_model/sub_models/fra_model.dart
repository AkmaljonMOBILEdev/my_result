class TrFraModel {
  final String official;
  final String common;

  TrFraModel({
    required this.official,
    required this.common,
  });

  factory TrFraModel.fromJson(Map<String, dynamic> json) {
    return TrFraModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
