class ZarModel {
  final String name;
  final String symbol;

  ZarModel({
    required this.name,
    required this.symbol,
  });

  factory ZarModel.fromJson(Map<String, dynamic> json) {
    return ZarModel(
      name: json["name"] ?? "",
      symbol: json["symbol"] ?? "",
    );
  }
}
// "ZAR": {
// "name": "South African rand",
// "symbol": "R"
// }
