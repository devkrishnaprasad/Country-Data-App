import 'dart:convert';

class CountryDetailElement {
  PurpleName name;
  List<String> tld;
  String cca2;
  String ccn3;
  String cca3;
  String? cioc;
  bool independent;
  String status;
  bool unMember;
  Map<String, Currency> currencies;
  Idd idd;
  List<String>? capital;
  List<String> altSpellings;
  String region;
  String subregion;
  PurpleLanguages languages;
  Map<String, Translation> translations;
  List<double> latlng;
  bool landlocked;
  List<String>? borders;
  double area;
  Demonyms demonyms;
  String flag;
  Maps maps;
  int population;
  String fifa;
  Car car;
  List<String> timezones;
  List<String> continents;
  Flags flags;
  CoatOfArms coatOfArms;
  String startOfWeek;
  CapitalInfo capitalInfo;
  PostalCode? postalCode;
  Gini? gini;

  CountryDetailElement({
    required this.name,
    required this.tld,
    required this.cca2,
    required this.ccn3,
    required this.cca3,
    this.cioc,
    required this.independent,
    required this.status,
    required this.unMember,
    required this.currencies,
    required this.idd,
    this.capital,
    required this.altSpellings,
    required this.region,
    required this.subregion,
    required this.languages,
    required this.translations,
    required this.latlng,
    required this.landlocked,
    this.borders,
    required this.area,
    required this.demonyms,
    required this.flag,
    required this.maps,
    required this.population,
    required this.fifa,
    required this.car,
    required this.timezones,
    required this.continents,
    required this.flags,
    required this.coatOfArms,
    required this.startOfWeek,
    required this.capitalInfo,
    this.postalCode,
    this.gini,
  });

  factory CountryDetailElement.fromRawJson(String str) =>
      CountryDetailElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CountryDetailElement.fromJson(Map<String, dynamic> json) =>
      CountryDetailElement(
        name: PurpleName.fromJson(json["name"]),
        tld: List<String>.from(json["tld"].map((x) => x)),
        cca2: json["cca2"],
        ccn3: json["ccn3"],
        cca3: json["cca3"],
        cioc: json["cioc"],
        independent: json["independent"],
        status: json["status"],
        unMember: json["unMember"],
        currencies: Map.from(json["currencies"])
            .map((k, v) => MapEntry<String, Currency>(k, Currency.fromJson(v))),
        idd: Idd.fromJson(json["idd"]),
        capital: json["capital"] == null
            ? []
            : List<String>.from(json["capital"]!.map((x) => x)),
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        region: json["region"],
        subregion: json["subregion"],
        languages: PurpleLanguages.fromJson(json["languages"]),
        translations: Map.from(json["translations"]).map((k, v) =>
            MapEntry<String, Translation>(k, Translation.fromJson(v))),
        latlng: List<double>.from(json["latlng"].map((x) => x?.toDouble())),
        landlocked: json["landlocked"],
        borders: json["borders"] == null
            ? []
            : List<String>.from(json["borders"]!.map((x) => x)),
        area: json["area"],
        demonyms: Demonyms.fromJson(json["demonyms"]),
        flag: json["flag"],
        maps: Maps.fromJson(json["maps"]),
        population: json["population"],
        fifa: json["fifa"] ?? "NA",
        car: Car.fromJson(json["car"]),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        continents: List<String>.from(json["continents"].map((x) => x)),
        flags: Flags.fromJson(json["flags"]),
        coatOfArms: CoatOfArms.fromJson(json["coatOfArms"]),
        startOfWeek: json["startOfWeek"],
        capitalInfo: CapitalInfo.fromJson(json["capitalInfo"]),
        postalCode: json["postalCode"] == null
            ? null
            : PostalCode.fromJson(json["postalCode"]),
        gini: json["gini"] == null ? null : Gini.fromJson(json["gini"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "tld": List<dynamic>.from(tld.map((x) => x)),
        "cca2": cca2,
        "ccn3": ccn3,
        "cca3": cca3,
        "cioc": cioc,
        "independent": independent,
        "status": status,
        "unMember": unMember,
        "currencies": Map.from(currencies)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "idd": idd.toJson(),
        "capital":
            capital == null ? [] : List<dynamic>.from(capital!.map((x) => x)),
        "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
        "region": region,
        "subregion": subregion,
        "languages": languages.toJson(),
        "translations": Map.from(translations)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
        "landlocked": landlocked,
        "borders":
            borders == null ? [] : List<dynamic>.from(borders!.map((x) => x)),
        "area": area,
        "demonyms": demonyms.toJson(),
        "flag": flag,
        "maps": maps.toJson(),
        "population": population,
        "fifa": fifa,
        "car": car.toJson(),
        "timezones": List<dynamic>.from(timezones.map((x) => x)),
        "continents": List<dynamic>.from(continents.map((x) => x)),
        "flags": flags.toJson(),
        "coatOfArms": coatOfArms.toJson(),
        "startOfWeek": startOfWeek,
        "capitalInfo": capitalInfo.toJson(),
        "postalCode": postalCode?.toJson(),
        "gini": gini?.toJson(),
      };
}

class CapitalInfo {
  List<double>? latlng;

  CapitalInfo({
    this.latlng,
  });

  factory CapitalInfo.fromRawJson(String str) =>
      CapitalInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
        latlng: json["latlng"] == null
            ? []
            : List<double>.from(json["latlng"]!.map((x) => x?.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "latlng":
            latlng == null ? [] : List<dynamic>.from(latlng!.map((x) => x)),
      };
}

class Car {
  List<String> signs;
  String side;

  Car({
    required this.signs,
    required this.side,
  });

  factory Car.fromRawJson(String str) => Car.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        signs: List<String>.from(json["signs"].map((x) => x)),
        side: json["side"]!,
      );

  Map<String, dynamic> toJson() => {
        "signs": List<dynamic>.from(signs.map((x) => x)),
        "side": side,
      };
}

class CoatOfArms {
  String? png;
  String? svg;

  CoatOfArms({
    this.png,
    this.svg,
  });

  factory CoatOfArms.fromRawJson(String str) =>
      CoatOfArms.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
        png: json["png"],
        svg: json["svg"],
      );

  Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
      };
}

class Currency {
  String name;
  String symbol;

  Currency({
    required this.name,
    required this.symbol,
  });

  factory Currency.fromRawJson(String str) =>
      Currency.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        name: json["name"],
        symbol: json["symbol"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "symbol": symbol,
      };
}

class Demonyms {
  Eng eng;
  Eng? fra;

  Demonyms({
    required this.eng,
    this.fra,
  });

  factory Demonyms.fromRawJson(String str) =>
      Demonyms.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
        eng: Eng.fromJson(json["eng"]),
        fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
      );

  Map<String, dynamic> toJson() => {
        "eng": eng.toJson(),
        "fra": fra?.toJson(),
      };
}

class Eng {
  String f;
  String m;

  Eng({
    required this.f,
    required this.m,
  });

  factory Eng.fromRawJson(String str) => Eng.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
        f: json["f"],
        m: json["m"],
      );

  Map<String, dynamic> toJson() => {
        "f": f,
        "m": m,
      };
}

class Flags {
  String png;
  String svg;
  String? alt;

  Flags({
    required this.png,
    required this.svg,
    this.alt,
  });

  factory Flags.fromRawJson(String str) => Flags.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        png: json["png"],
        svg: json["svg"],
        alt: json["alt"],
      );

  Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
        "alt": alt,
      };
}

class Gini {
  double the2016;

  Gini({
    required this.the2016,
  });

  factory Gini.fromRawJson(String str) => Gini.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Gini.fromJson(Map<String, dynamic> json) => Gini(
        the2016: (json["2016"] != null)
            ? json["2016"].toDouble()
            : 0.0, // Provide a default value
      );

  Map<String, dynamic> toJson() => {
        "2016": the2016,
      };
}

class Idd {
  String root;
  List<String> suffixes;

  Idd({
    required this.root,
    required this.suffixes,
  });

  factory Idd.fromRawJson(String str) => Idd.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
        root: json["root"],
        suffixes: List<String>.from(json["suffixes"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "root": root,
        "suffixes": List<dynamic>.from(suffixes.map((x) => x)),
      };
}

class PurpleLanguages {
  String? kor;
  String? zho;
  String? eng;
  String? por;

  PurpleLanguages({
    this.kor,
    this.zho,
    this.eng,
    this.por,
  });

  factory PurpleLanguages.fromRawJson(String str) =>
      PurpleLanguages.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleLanguages.fromJson(Map<String, dynamic> json) =>
      PurpleLanguages(
        kor: json["kor"],
        zho: json["zho"],
        eng: json["eng"],
        por: json["por"],
      );

  Map<String, dynamic> toJson() => {
        "kor": kor,
        "zho": zho,
        "eng": eng,
        "por": por,
      };
}

class Maps {
  String googleMaps;
  String openStreetMaps;

  Maps({
    required this.googleMaps,
    required this.openStreetMaps,
  });

  factory Maps.fromRawJson(String str) => Maps.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
        googleMaps: json["googleMaps"],
        openStreetMaps: json["openStreetMaps"],
      );

  Map<String, dynamic> toJson() => {
        "googleMaps": googleMaps,
        "openStreetMaps": openStreetMaps,
      };
}

class PurpleName {
  String common;
  String official;
  PurpleNativeName nativeName;

  PurpleName({
    required this.common,
    required this.official,
    required this.nativeName,
  });

  factory PurpleName.fromRawJson(String str) =>
      PurpleName.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleName.fromJson(Map<String, dynamic> json) => PurpleName(
        common: json["common"],
        official: json["official"],
        nativeName: PurpleNativeName.fromJson(json["nativeName"]),
      );

  Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        "nativeName": nativeName.toJson(),
      };
}

class PurpleNativeName {
  Translation? kor;
  Translation? zho;
  Translation? eng;
  Translation? por;

  PurpleNativeName({
    this.kor,
    this.zho,
    this.eng,
    this.por,
  });

  factory PurpleNativeName.fromRawJson(String str) =>
      PurpleNativeName.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleNativeName.fromJson(Map<String, dynamic> json) =>
      PurpleNativeName(
        kor: json["kor"] == null ? null : Translation.fromJson(json["kor"]),
        zho: json["zho"] == null ? null : Translation.fromJson(json["zho"]),
        eng: json["eng"] == null ? null : Translation.fromJson(json["eng"]),
        por: json["por"] == null ? null : Translation.fromJson(json["por"]),
      );

  Map<String, dynamic> toJson() => {
        "kor": kor?.toJson(),
        "zho": zho?.toJson(),
        "eng": eng?.toJson(),
        "por": por?.toJson(),
      };
}

class Translation {
  String official;
  String common;

  Translation({
    required this.official,
    required this.common,
  });

  factory Translation.fromRawJson(String str) =>
      Translation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        official: json["official"],
        common: json["common"],
      );

  Map<String, dynamic> toJson() => {
        "official": official,
        "common": common,
      };
}

class PostalCode {
  String format;
  String regex;

  PostalCode({
    required this.format,
    required this.regex,
  });

  factory PostalCode.fromRawJson(String str) =>
      PostalCode.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
        format: json["format"],
        regex: json["regex"],
      );

  Map<String, dynamic> toJson() => {
        "format": format,
        "regex": regex,
      };
}

class PurpleCountryDetail {
  FluffyName name;
  List<String> tld;
  String cca2;
  String ccn3;
  String cca3;
  String? cioc;
  bool independent;
  String status;
  bool unMember;
  Map<String, Currency> currencies;
  Idd idd;
  List<String> capital;
  List<String> altSpellings;
  String region;
  String subregion;
  FluffyLanguages languages;
  Map<String, Translation> translations;
  List<double> latlng;
  bool landlocked;
  List<String>? borders;
  int area;
  Demonyms demonyms;
  String flag;
  Maps maps;
  int population;
  Map<String, double>? gini;
  String? fifa;
  Car car;
  List<String> timezones;
  List<String> continents;
  Flags flags;
  CoatOfArms coatOfArms;
  String startOfWeek;
  CapitalInfo capitalInfo;
  PostalCode? postalCode;

  PurpleCountryDetail({
    required this.name,
    required this.tld,
    required this.cca2,
    required this.ccn3,
    required this.cca3,
    this.cioc,
    required this.independent,
    required this.status,
    required this.unMember,
    required this.currencies,
    required this.idd,
    required this.capital,
    required this.altSpellings,
    required this.region,
    required this.subregion,
    required this.languages,
    required this.translations,
    required this.latlng,
    required this.landlocked,
    this.borders,
    required this.area,
    required this.demonyms,
    required this.flag,
    required this.maps,
    required this.population,
    this.gini,
    this.fifa,
    required this.car,
    required this.timezones,
    required this.continents,
    required this.flags,
    required this.coatOfArms,
    required this.startOfWeek,
    required this.capitalInfo,
    this.postalCode,
  });

  factory PurpleCountryDetail.fromRawJson(String str) =>
      PurpleCountryDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleCountryDetail.fromJson(Map<String, dynamic> json) =>
      PurpleCountryDetail(
        name: FluffyName.fromJson(json["name"]),
        tld: List<String>.from(json["tld"].map((x) => x)),
        cca2: json["cca2"],
        ccn3: json["ccn3"],
        cca3: json["cca3"],
        cioc: json["cioc"],
        independent: json["independent"],
        status: json["status"],
        unMember: json["unMember"],
        currencies: Map.from(json["currencies"])
            .map((k, v) => MapEntry<String, Currency>(k, Currency.fromJson(v))),
        idd: Idd.fromJson(json["idd"]),
        capital: List<String>.from(json["capital"].map((x) => x)),
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        region: json["region"],
        subregion: json["subregion"],
        languages: FluffyLanguages.fromJson(json["languages"]),
        translations: Map.from(json["translations"]).map((k, v) =>
            MapEntry<String, Translation>(k, Translation.fromJson(v))),
        latlng: List<double>.from(json["latlng"].map((x) => x?.toDouble())),
        landlocked: json["landlocked"],
        borders: json["borders"] == null
            ? []
            : List<String>.from(json["borders"]!.map((x) => x)),
        area: json["area"],
        demonyms: Demonyms.fromJson(json["demonyms"]),
        flag: json["flag"],
        maps: Maps.fromJson(json["maps"]),
        population: json["population"],
        gini: Map.from(json["gini"]!)
            .map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
        fifa: json["fifa"],
        car: Car.fromJson(json["car"]),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        continents: List<String>.from(json["continents"].map((x) => x)),
        flags: Flags.fromJson(json["flags"]),
        coatOfArms: CoatOfArms.fromJson(json["coatOfArms"]),
        startOfWeek: json["startOfWeek"],
        capitalInfo: CapitalInfo.fromJson(json["capitalInfo"]),
        postalCode: json["postalCode"] == null
            ? null
            : PostalCode.fromJson(json["postalCode"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "tld": List<dynamic>.from(tld.map((x) => x)),
        "cca2": cca2,
        "ccn3": ccn3,
        "cca3": cca3,
        "cioc": cioc,
        "independent": independent,
        "status": status,
        "unMember": unMember,
        "currencies": Map.from(currencies)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "idd": idd.toJson(),
        "capital": List<dynamic>.from(capital.map((x) => x)),
        "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
        "region": region,
        "subregion": subregion,
        "languages": languages.toJson(),
        "translations": Map.from(translations)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
        "landlocked": landlocked,
        "borders":
            borders == null ? [] : List<dynamic>.from(borders!.map((x) => x)),
        "area": area,
        "demonyms": demonyms.toJson(),
        "flag": flag,
        "maps": maps.toJson(),
        "population": population,
        "gini": Map.from(gini!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "fifa": fifa,
        "car": car.toJson(),
        "timezones": List<dynamic>.from(timezones.map((x) => x)),
        "continents": List<dynamic>.from(continents.map((x) => x)),
        "flags": flags.toJson(),
        "coatOfArms": coatOfArms.toJson(),
        "startOfWeek": startOfWeek,
        "capitalInfo": capitalInfo.toJson(),
        "postalCode": postalCode?.toJson(),
      };
}

class FluffyLanguages {
  String? deu;
  String? eng;
  String? hin;
  String? tam;
  String? ara;
  String? heb;
  String? sin;
  String? ita;

  FluffyLanguages({
    this.deu,
    this.eng,
    this.hin,
    this.tam,
    this.ara,
    this.heb,
    this.sin,
    this.ita,
  });

  factory FluffyLanguages.fromRawJson(String str) =>
      FluffyLanguages.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyLanguages.fromJson(Map<String, dynamic> json) =>
      FluffyLanguages(
        deu: json["deu"],
        eng: json["eng"],
        hin: json["hin"],
        tam: json["tam"],
        ara: json["ara"],
        heb: json["heb"],
        sin: json["sin"],
        ita: json["ita"],
      );

  Map<String, dynamic> toJson() => {
        "deu": deu,
        "eng": eng,
        "hin": hin,
        "tam": tam,
        "ara": ara,
        "heb": heb,
        "sin": sin,
        "ita": ita,
      };
}

class FluffyName {
  String common;
  String official;
  FluffyNativeName nativeName;

  FluffyName({
    required this.common,
    required this.official,
    required this.nativeName,
  });

  factory FluffyName.fromRawJson(String str) =>
      FluffyName.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyName.fromJson(Map<String, dynamic> json) => FluffyName(
        common: json["common"],
        official: json["official"],
        nativeName: FluffyNativeName.fromJson(json["nativeName"]),
      );

  Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        "nativeName": nativeName.toJson(),
      };
}

class FluffyNativeName {
  Translation? deu;
  Translation? eng;
  Translation? hin;
  Translation? tam;
  Translation? ara;
  Translation? heb;
  Translation? sin;
  Translation? ita;

  FluffyNativeName({
    this.deu,
    this.eng,
    this.hin,
    this.tam,
    this.ara,
    this.heb,
    this.sin,
    this.ita,
  });

  factory FluffyNativeName.fromRawJson(String str) =>
      FluffyNativeName.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyNativeName.fromJson(Map<String, dynamic> json) =>
      FluffyNativeName(
        deu: json["deu"] == null ? null : Translation.fromJson(json["deu"]),
        eng: json["eng"] == null ? null : Translation.fromJson(json["eng"]),
        hin: json["hin"] == null ? null : Translation.fromJson(json["hin"]),
        tam: json["tam"] == null ? null : Translation.fromJson(json["tam"]),
        ara: json["ara"] == null ? null : Translation.fromJson(json["ara"]),
        heb: json["heb"] == null ? null : Translation.fromJson(json["heb"]),
        sin: json["sin"] == null ? null : Translation.fromJson(json["sin"]),
        ita: json["ita"] == null ? null : Translation.fromJson(json["ita"]),
      );

  Map<String, dynamic> toJson() => {
        "deu": deu?.toJson(),
        "eng": eng?.toJson(),
        "hin": hin?.toJson(),
        "tam": tam?.toJson(),
        "ara": ara?.toJson(),
        "heb": heb?.toJson(),
        "sin": sin?.toJson(),
        "ita": ita?.toJson(),
      };
}
