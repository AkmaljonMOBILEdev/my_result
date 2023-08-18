class LanguageModel {
  final String afr;
  final String eng;
  final String nbl;
  final String nso;
  final String sot;
  final String ssw;
  final String tsn;
  final String tso;
  final String ven;
  final String xho;
  final String zul;

  LanguageModel({
    required this.afr,
    required this.eng,
    required this.nbl,
    required this.nso,
    required this.sot,
    required this.ssw,
    required this.tsn,
    required this.tso,
    required this.ven,
    required this.xho,
    required this.zul,
  });

  factory LanguageModel.fromJson(Map<String, dynamic> json) {
    return LanguageModel(
      afr: json["afr"] ?? "",
      eng: json["eng"] ?? "",
      nbl: json["nbl"] ?? "",
      nso: json["nso"] ?? "",
      sot: json["sot"] ?? "",
      ssw: json["ssw"] ?? "",
      tsn: json["tsn"] ?? "",
      tso: json["tso"] ?? "",
      ven: json["ven"] ?? "",
      xho: json["xho"] ?? "",
      zul: json["zul"] ?? "",
    );
  }
}

