class VenModel {
  final String official;
  final String common;

  VenModel({
    required this.official,
    required this.common,
  });

  factory VenModel.fromJson(Map<String, dynamic> json) {
    return VenModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
