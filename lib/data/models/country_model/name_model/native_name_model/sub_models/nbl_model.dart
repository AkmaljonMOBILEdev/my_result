class NblModel {
  final String official;
  final String common;

  NblModel({
    required this.official,
    required this.common,
  });

  factory NblModel.fromJson(Map<String, dynamic> json) {
    return NblModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
