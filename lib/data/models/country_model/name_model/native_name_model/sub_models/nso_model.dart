class NsoModel {
  final String official;
  final String common;

  NsoModel({
    required this.official,
    required this.common,
  });

  factory NsoModel.fromJson(Map<String, dynamic> json) {
    return NsoModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
