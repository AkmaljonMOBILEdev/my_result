class TrZhoModel {
  final String official;
  final String common;

  TrZhoModel({
    required this.official,
    required this.common,
  });

  factory TrZhoModel.fromJson(Map<String, dynamic> json) {
    return TrZhoModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
