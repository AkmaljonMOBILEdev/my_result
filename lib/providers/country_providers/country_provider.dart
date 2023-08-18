import 'package:exam_repo_n8/data/models/universal_data.dart';
import 'package:exam_repo_n8/data/network/api_service.dart';
import 'package:exam_repo_n8/data/status/form_status.dart';
import 'package:flutter/cupertino.dart';
import '../../data/models/country_model/country_model.dart';

class CountryProvider with ChangeNotifier{
  CountryProvider({required this.apiService}){
    fetchAllCountries();
  }
  final ApiService apiService;
  List<CountryModel> countries = [];
  String errorText = "";
  FormStatus status = FormStatus.pure;

  Future<void> fetchAllCountries()async{
    notify(FormStatus.loading);
    UniversalData universalData = await apiService.getAllCountries();
    if(universalData.error.isEmpty){
      // debugPrint("COUNTRY DATA: ${universalData.data}");
      notify(FormStatus.success);
      countries = universalData.data as List<CountryModel>;
    }else{
      debugPrint("ERROR, FIX IT: ${universalData.error}");
      notify(FormStatus.failure);
      errorText = universalData.error;
    }
  }

  notify(FormStatus value){
    status = value;
    notifyListeners();
  }
}