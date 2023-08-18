class TrFinModel {
  final String official;
  final String common;

  TrFinModel({
    required this.official,
    required this.common,
  });

  factory TrFinModel.fromJson(Map<String, dynamic> json) {
    return TrFinModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
