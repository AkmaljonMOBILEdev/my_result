class DemFraModel {
  final String f;
  final String m;

  DemFraModel({
    required this.f,
    required this.m,
  });

  factory DemFraModel.fromJson(Map<String, dynamic> json) {
    return DemFraModel(
      f: json["f"] ?? "",
      m: json["m"] ?? "",
    );
  }
}
