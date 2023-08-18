import 'package:exam_repo_n8/data/models/country_model/name_model/native_name_model/sub_models/afr_model.dart';
import 'package:exam_repo_n8/data/models/country_model/name_model/native_name_model/sub_models/eng_model.dart';
import 'package:exam_repo_n8/data/models/country_model/name_model/native_name_model/sub_models/nbl_model.dart';
import 'package:exam_repo_n8/data/models/country_model/name_model/native_name_model/sub_models/nso_model.dart';
import 'package:exam_repo_n8/data/models/country_model/name_model/native_name_model/sub_models/sot_model.dart';
import 'package:exam_repo_n8/data/models/country_model/name_model/native_name_model/sub_models/ssw_model.dart';
import 'package:exam_repo_n8/data/models/country_model/name_model/native_name_model/sub_models/tsn_model.dart';
import 'package:exam_repo_n8/data/models/country_model/name_model/native_name_model/sub_models/tso_model.dart';
import 'package:exam_repo_n8/data/models/country_model/name_model/native_name_model/sub_models/ven_model.dart';
import 'package:exam_repo_n8/data/models/country_model/name_model/native_name_model/sub_models/xho_model.dart';
import 'package:exam_repo_n8/data/models/country_model/name_model/native_name_model/sub_models/zul_model.dart';

class NativeNameModel {
  final AfrModel afrModel;
  final EngModel engModel;
  final NblModel nblModel;
  final NsoModel nsoModel;
  final SotModel sotModel;
  final SswModel sswModel;
  final TsnModel tsnModel;
  final TsoModel tsoModel;
  final VenModel venModel;
  final XhoModel xhoModel;
  final ZulModel zulModel;

  NativeNameModel({
    required this.afrModel,
    required this.engModel,
    required this.nblModel,
    required this.nsoModel,
    required this.sotModel,
    required this.sswModel,
    required this.tsnModel,
    required this.tsoModel,
    required this.venModel,
    required this.xhoModel,
    required this.zulModel,
  });

  factory NativeNameModel.fromJson(Map<String, dynamic> json) {
    return NativeNameModel(
      afrModel: AfrModel.fromJson(json["afr"]),
      engModel: EngModel.fromJson(json["eng"]),
      nblModel: NblModel.fromJson(json["nbl"]),
      nsoModel: NsoModel.fromJson(json["nso"]),
      sotModel: SotModel.fromJson(json["sot"]),
      sswModel: SswModel.fromJson(json["ssw"]),
      tsnModel: TsnModel.fromJson(json["tsn"]),
      tsoModel: TsoModel.fromJson(json["tso"]),
      venModel: VenModel.fromJson(json["ven"]),
      xhoModel: XhoModel.fromJson(json["xho"]),
      zulModel: ZulModel.fromJson(json["zul"]),
    );
  }
}

