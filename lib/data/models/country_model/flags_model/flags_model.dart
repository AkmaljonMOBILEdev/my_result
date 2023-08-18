class FlagsModel {
  final String png;
  final String svg;
  final String alt;

  FlagsModel({
    required this.png,
    required this.svg,
    required this.alt,
  });

  factory FlagsModel.fromJson(Map<String, dynamic> json) {
    return FlagsModel(
      png: json["png"] ?? "",
      svg: json["svg"] ?? "",
      alt: json["alt"] ?? "",
    );
  }
}

