class CapitalInfoModel{
  final List<double> latlng;

  CapitalInfoModel({required this.latlng});

  factory CapitalInfoModel.fromJson(Map<String, dynamic> json){
    return CapitalInfoModel(latlng: List<double>.from(json["latlng"] as List? ?? []));
  }
}
