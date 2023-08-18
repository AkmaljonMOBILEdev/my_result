class TrSrpModel {
  final String official;
  final String common;

  TrSrpModel({
    required this.official,
    required this.common,
  });

  factory TrSrpModel.fromJson(Map<String, dynamic> json) {
    return TrSrpModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
