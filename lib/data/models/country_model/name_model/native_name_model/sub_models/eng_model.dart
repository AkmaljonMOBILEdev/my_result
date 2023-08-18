class EngModel {
  final String official;
  final String common;

  EngModel({
    required this.official,
    required this.common,
  });

  factory EngModel.fromJson(Map<String, dynamic> json) {
    return EngModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
