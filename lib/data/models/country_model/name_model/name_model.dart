
class NameModel {
  final String common;
  final String official;
  // final NativeNameModel nativeName;

  NameModel({
    required this.common,
    required this.official,
    // required this.nativeName,
  });

  factory NameModel.fromJson(Map<String, dynamic> json) {
    return NameModel(
      common: json["common"] ?? "",
      official: json["official"] ?? "",
      // nativeName: NativeNameModel.fromJson(json["nativeName"]),
    );
  }
}
