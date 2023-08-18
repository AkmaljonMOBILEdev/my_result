class DemEngModel {
  final String f;
  final String m;

  DemEngModel({
    required this.f,
    required this.m,
  });

  factory DemEngModel.fromJson(Map<String, dynamic> json) {
    return DemEngModel(
      f: json["f"] ?? "",
      m: json["m"] ?? "",
    );
  }
}
