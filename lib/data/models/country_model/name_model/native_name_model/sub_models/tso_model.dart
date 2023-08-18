class TsoModel {
  final String official;
  final String common;

  TsoModel({
    required this.official,
    required this.common,
  });

  factory TsoModel.fromJson(Map<String, dynamic> json) {
    return TsoModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
