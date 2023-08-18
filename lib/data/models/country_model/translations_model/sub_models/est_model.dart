class TrEstModel {
  final String official;
  final String common;

  TrEstModel({
    required this.official,
    required this.common,
  });

  factory TrEstModel.fromJson(Map<String, dynamic> json) {
    return TrEstModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
