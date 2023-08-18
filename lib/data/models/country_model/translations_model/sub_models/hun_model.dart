class TrHunModel {
  final String official;
  final String common;

  TrHunModel({
    required this.official,
    required this.common,
  });

  factory TrHunModel.fromJson(Map<String, dynamic> json) {
    return TrHunModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
