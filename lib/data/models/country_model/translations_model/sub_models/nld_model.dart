class TrNldModel {
  final String official;
  final String common;

  TrNldModel({
    required this.official,
    required this.common,
  });

  factory TrNldModel.fromJson(Map<String, dynamic> json) {
    return TrNldModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
