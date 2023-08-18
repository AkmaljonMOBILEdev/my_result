import 'package:exam_repo_n8/data/models/country_model/demonyms_model/sub_models/eng_model.dart';
import 'package:exam_repo_n8/data/models/country_model/demonyms_model/sub_models/fra_model.dart';

class DemonymsModel {
  final DemEngModel eng;
  final DemFraModel fra;

  DemonymsModel({
    required this.eng,
    required this.fra,
  });

  factory DemonymsModel.fromJson(Map<String, dynamic> json) {
    return DemonymsModel(
      eng: DemEngModel.fromJson(json["eng"]),
      fra: DemFraModel.fromJson(json["fra"]),
    );
  }
}
