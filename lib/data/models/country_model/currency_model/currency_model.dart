import 'package:exam_repo_n8/data/models/country_model/currency_model/zar_model/zar_model.dart';

class CurrencyModel{
  final ZarModel zarModel;
  
  CurrencyModel({required this.zarModel});
  
  factory CurrencyModel.fromJson(Map<String, dynamic> json){
    return CurrencyModel(zarModel: ZarModel.fromJson(json["ZAR"]));
  }
}