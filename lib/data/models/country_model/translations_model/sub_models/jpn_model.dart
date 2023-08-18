class TrJpnModel {
  final String official;
  final String common;

  TrJpnModel({
    required this.official,
    required this.common,
  });

  factory TrJpnModel.fromJson(Map<String, dynamic> json) {
    return TrJpnModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
