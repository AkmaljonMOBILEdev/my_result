class TrSpaModel {
  final String official;
  final String common;

  TrSpaModel({
    required this.official,
    required this.common,
  });

  factory TrSpaModel.fromJson(Map<String, dynamic> json) {
    return TrSpaModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
