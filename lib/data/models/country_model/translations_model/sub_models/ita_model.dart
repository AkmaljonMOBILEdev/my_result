class TrItaModel {
  final String official;
  final String common;

  TrItaModel({
    required this.official,
    required this.common,
  });

  factory TrItaModel.fromJson(Map<String, dynamic> json) {
    return TrItaModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
