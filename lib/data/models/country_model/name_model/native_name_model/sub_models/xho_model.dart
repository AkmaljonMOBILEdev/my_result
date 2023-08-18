class XhoModel {
  final String official;
  final String common;

  XhoModel({
    required this.official,
    required this.common,
  });

  factory XhoModel.fromJson(Map<String, dynamic> json) {
    return XhoModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
