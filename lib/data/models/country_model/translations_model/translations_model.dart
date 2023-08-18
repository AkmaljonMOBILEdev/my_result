import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/ara_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/bre_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/ces_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/cym_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/deu_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/est_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/fin_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/fra_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/hrv_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/hun_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/ita_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/jpn_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/kor_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/nld_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/per_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/pol_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/por_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/rus_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/slk_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/spa_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/srp_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/swe_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/tur_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/urd_model.dart';
import 'package:exam_repo_n8/data/models/country_model/translations_model/sub_models/zho_model.dart';

class TranslationsModel {
  final TrAraModel ara;
  final TrBreModel bre;
  final TrCesModel ces;
  final TrCymModel cym;
  final TrDeuModel deu;
  final TrEstModel est;
  final TrFinModel fin;
  final TrFraModel fra;
  final TrHrvModel hrv;
  final TrHunModel hun;
  final TrItaModel ita;
  final TrJpnModel jpn;
  final TrKorModel kor;
  final TrNldModel nld;
  final TrPerModel per;
  final TrPolModel pol;
  final TrPorModel por;
  final TrRusModel rus;
  final TrSlkModel slk;
  final TrSpaModel spa;
  final TrSrpModel srp;
  final TrSweModel swe;
  final TrTurModel tur;
  final TrUrdModel urd;
  final TrZhoModel zho;

  TranslationsModel({
    required this.ara,
    required this.bre,
    required this.ces,
    required this.cym,
    required this.deu,
    required this.est,
    required this.fin,
    required this.fra,
    required this.hrv,
    required this.hun,
    required this.ita,
    required this.jpn,
    required this.kor,
    required this.nld,
    required this.per,
    required this.pol,
    required this.por,
    required this.rus,
    required this.slk,
    required this.spa,
    required this.srp,
    required this.swe,
    required this.tur,
    required this.urd,
    required this.zho,
  });

  factory TranslationsModel.fromJson(Map<String, dynamic> json) {
    return TranslationsModel(
      ara: TrAraModel.fromJson(json["ara"]),
      bre: TrBreModel.fromJson(json["bre"]),
      ces: TrCesModel.fromJson(json["ces"]),
      cym: TrCymModel.fromJson(json["cym"]),
      deu: TrDeuModel.fromJson(json["deu"]),
      est: TrEstModel.fromJson(json["est"]),
      fin: TrFinModel.fromJson(json["fin"]),
      fra: TrFraModel.fromJson(json["fra"]),
      hrv: TrHrvModel.fromJson(json["hrv"]),
      hun: TrHunModel.fromJson(json["hun"]),
      ita: TrItaModel.fromJson(json["ita"]),
      jpn: TrJpnModel.fromJson(json["jpn"]),
      kor: TrKorModel.fromJson(json["kor"]),
      nld: TrNldModel.fromJson(json["nld"]),
      per: TrPerModel.fromJson(json["per"]),
      pol: TrPolModel.fromJson(json["pol"]),
      por: TrPorModel.fromJson(json["por"]),
      rus: TrRusModel.fromJson(json["rus"]),
      slk: TrSlkModel.fromJson(json["slk"]),
      spa: TrSpaModel.fromJson(json["slk"]),
      srp: TrSrpModel.fromJson(json["srp"]),
      swe: TrSweModel.fromJson(json["swe"]),
      tur: TrTurModel.fromJson(json["tur"]),
      urd: TrUrdModel.fromJson(json["urd"]),
      zho: TrZhoModel.fromJson(json["zho"]),
    );
  }
}
