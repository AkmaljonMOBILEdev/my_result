class PostalCodeModel {
  final String format;
  final String regex;

  PostalCodeModel({
    required this.format,
    required this.regex,
  });

  factory PostalCodeModel.fromJson(Map<String, dynamic> json) {
    return PostalCodeModel(
      format: json["format"] ?? "",
      regex: json["regex"] ?? "",
    );
  }
}
