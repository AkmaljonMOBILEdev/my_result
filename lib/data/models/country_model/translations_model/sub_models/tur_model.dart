class TrTurModel {
  final String official;
  final String common;

  TrTurModel({
    required this.official,
    required this.common,
  });

  factory TrTurModel.fromJson(Map<String, dynamic> json) {
    return TrTurModel(
      official: json["official"] ?? "",
      common: json["common"] ?? "",
    );
  }
}
