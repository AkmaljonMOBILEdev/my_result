class TrUrdModel {
  final String official;
  final String common;

  TrUrdModel({
    required this.official,
    required this.common,
  });

  factory TrUrdModel.fromJson(Map<String, dynamic> json) {
    return TrUrdModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
