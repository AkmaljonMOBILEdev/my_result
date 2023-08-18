class TrCesModel {
  final String official;
  final String common;

  TrCesModel({
    required this.official,
    required this.common,
  });

  factory TrCesModel.fromJson(Map<String, dynamic> json) {
    return TrCesModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
