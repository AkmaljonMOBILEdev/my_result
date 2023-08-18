class TrPolModel {
  final String official;
  final String common;

  TrPolModel({
    required this.official,
    required this.common,
  });

  factory TrPolModel.fromJson(Map<String, dynamic> json) {
    return TrPolModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
