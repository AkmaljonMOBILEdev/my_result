class TrPerModel {
  final String official;
  final String common;

  TrPerModel({
    required this.official,
    required this.common,
  });

  factory TrPerModel.fromJson(Map<String, dynamic> json) {
    return TrPerModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
