class ZulModel {
  final String official;
  final String common;

  ZulModel({
    required this.official,
    required this.common,
  });

  factory ZulModel.fromJson(Map<String, dynamic> json) {
    return ZulModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
