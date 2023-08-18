class TrKorModel {
  final String official;
  final String common;

  TrKorModel({
    required this.official,
    required this.common,
  });

  factory TrKorModel.fromJson(Map<String, dynamic> json) {
    return TrKorModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
