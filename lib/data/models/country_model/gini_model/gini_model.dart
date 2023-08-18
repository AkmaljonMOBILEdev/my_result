class GiniModel{
  final double c2014;

  GiniModel({required this.c2014});

  factory GiniModel.fromJson(Map<String, dynamic> json){
    return GiniModel(c2014: json["2014"] ?? 0.0);
  }

}
