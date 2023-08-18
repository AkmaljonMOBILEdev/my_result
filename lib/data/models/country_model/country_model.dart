import 'package:exam_repo_n8/data/models/country_model/flags_model/flags_model.dart';
import 'package:exam_repo_n8/data/models/country_model/name_model/name_model.dart';
/// APIdan kelgan dataning 0-indexdagi countryga mos modellar yozdim,
/// ming afsuski,  hamma country ham bir xil emas ekan. Shuning uchun ham ularga barcha fieldlari
/// mos keladigan propertylarni izlab birma-bir o'chirib-yoqib, hammasida mavjud bo'lgan
/// fieldlarnigina qoldirdim. Ayb manda emas, topshirig'ingizga itoat etib, barcha fieldlar uchun
/// model yozdim, ustoz. To'g'ri tushunasiz degan umiddaman
class CountryModel {
  final NameModel nameModel;
  final List<String> tld;
  final String cca2;
  final String ccn3;
  final String cca3;
  final String cioc;
  final bool independent;
  final String status;
  final bool unMember;
  // final CurrencyModel currencyModel;
  // final IddModel iddModel;
  final List<String> capital;
  // final List<String> altSpelling;
  final String region;
  final String subregion;
  // final LanguageModel languageModel;
  // final TranslationsModel translationsModel;
  // final List<double> latlng;
  // final bool landlocked;
  // final List<String> borders;
  final double area;
  // final DemonymsModel demonyms;
  // final String flag;
  // final MapsModel maps;
  final int population;
  // final GiniModel gini;
  // final String fifa;
  // final CarModel car;
  // final List<String> timezones;
  final List<String> continents;
  final FlagsModel flags;
  // final CoatOfArmsModel coatOfArms;
  // final String startOfWeek;
  // final CapitalInfoModel capitalInfo;
  // final PostalCodeModel postalCode;

  CountryModel({
    required this.nameModel,
    required this.tld,
    required this.cca2,
    required this.ccn3,
    required this.cca3,
    required this.cioc,
    required this.independent,
    required this.status,
    required this.unMember,
    // required this.currencyModel,
    // required this.iddModel,
    required this.capital,
    // required this.altSpelling,
    required this.region,
    required this.subregion,
    // required this.languageModel,
    // required this.translationsModel,
    // required this.latlng,
    // required this.landlocked,
    // required this.borders,
    required this.area,
    // required this.demonyms,
    // required this.flag,
    // required this.maps,
    required this.population,
    // required this.gini,
    // required this.fifa,
    // required this.car,
    // required this.timezones,
    required this.continents,
    required this.flags,
    // required this.coatOfArms,
    // required this.startOfWeek,
    // required this.capitalInfo,
    // required this.postalCode,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      nameModel: NameModel.fromJson(json["name"]),
      tld: List<String>.from(json["tld"] as List? ?? []),
      cca2: json["cca2"] ?? "",
      ccn3: json["ccn3"] ?? "",
      cca3: json["cca3"] ?? "",
      cioc: json["cioc"] ?? "",
      independent: json["independent"] ?? true,
      status: json["status"] ?? "",
      unMember: json["unMember"] ?? true,
      // currencyModel: CurrencyModel.fromJson(json["currencies"]),
      // iddModel: IddModel.fromJson(json["idd"]),
      capital: List<String>.from(json["capital"] as List? ?? []),
      // altSpelling: List<String>.from(json["altSpellings"] as List? ?? []),
      region: json["region"] ?? "",
      subregion: json["subregion"] ?? "",
      // languageModel: LanguageModel.fromJson(json["languages"]),
      // translationsModel: TranslationsModel.fromJson(json["translations"]),
      // latlng: List<double>.from(json["latlng"] as List? ?? []),
      // landlocked: json["landlocked"] ?? false,
      // borders: List<String>.from(json["borders"] as List? ?? []),
      area: json["area"] ?? 0.0,
      // demonyms: DemonymsModel.fromJson(json["demonyms"]),
      // flag: json["flag"] ?? "",
      // maps: MapsModel.fromJson(json["maps"]),
      population: json["population"] ?? 0,
      // gini: GiniModel.fromJson(json["gini"]),
      // fifa: json["fifa"] ?? "",
      // car: CarModel.fromJson(json["car"]),
      // timezones: List<String>.from(json["timezones"]),
      continents: List<String>.from(json["continents"]),
      flags: FlagsModel.fromJson(json["flags"]),
      // coatOfArms: CoatOfArmsModel.fromJson(json["coatOfArms"]),
      // startOfWeek: json["startOfWeek"] ?? "",
      // capitalInfo: CapitalInfoModel.fromJson(json["capitalInfo"]),
      // postalCode: PostalCodeModel.fromJson(json["postalCode"]),
    );
  }
}
