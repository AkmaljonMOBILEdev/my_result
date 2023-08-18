class TsnModel {
  final String official;
  final String common;

  TsnModel({
    required this.official,
    required this.common,
  });

  factory TsnModel.fromJson(Map<String, dynamic> json) {
    return TsnModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
