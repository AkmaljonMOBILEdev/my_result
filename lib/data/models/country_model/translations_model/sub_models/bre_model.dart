class TrBreModel {
  final String official;
  final String common;

  TrBreModel({
    required this.official,
    required this.common,
  });

  factory TrBreModel.fromJson(Map<String, dynamic> json) {
    return TrBreModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
