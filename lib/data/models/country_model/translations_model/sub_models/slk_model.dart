class TrSlkModel {
  final String official;
  final String common;

  TrSlkModel({
    required this.official,
    required this.common,
  });

  factory TrSlkModel.fromJson(Map<String, dynamic> json) {
    return TrSlkModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
