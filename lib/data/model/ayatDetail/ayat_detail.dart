import 'package:json_annotation/json_annotation.dart';

part 'ayat_detail.g.dart';

@JsonSerializable()
class AlquranDetail {
  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'data')
  Data data;

  AlquranDetail(
      {required this.code,
      required this.status,
      required this.message,
      required this.data});

  factory AlquranDetail.fromJson(Map<String, dynamic> json) =>
      _$AlquranDetailFromJson(json);

  Map<String, dynamic> toJson() => _$AlquranDetailToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: 'number')
  int? number;

  @JsonKey(name: 'sequence')
  int sequence;

  @JsonKey(name: 'numberOfVerses')
  int numberOfVerses;

  @JsonKey(name: 'name')
  Name name;

  @JsonKey(name: 'revelation')
  Revelation revelation;

  @JsonKey(name: 'tafsir')
  DataTafsir tafsir;

  @JsonKey(name: 'perBismillah')
  dynamic preBismillah;

  @JsonKey(name: 'verses')
  List<Verse> verses;

  Data({
    required this.number,
    required this.sequence,
    required this.numberOfVerses,
    required this.name,
    required this.revelation,
    required this.tafsir,
    required this.preBismillah,
    required this.verses,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Name {
  @JsonKey(name: 'short')
  String? short;

  @JsonKey(name: 'long')
  String long;

  @JsonKey(name: 'transliteration')
  Translation transliteration;

  @JsonKey(name: 'translation')
  Translation translation;

  Name({
    required this.short,
    required this.long,
    required this.transliteration,
    required this.translation,
  });
  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
  Map<String, dynamic> toJson() => _$NameToJson(this);
}

@JsonSerializable()
class Translation {
  @JsonKey(name: 'en')
  String en;

  @JsonKey(name: 'id')
  String id;

  Translation({
    required this.en,
    required this.id,
  });

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
  Map<String, dynamic> toJson() => _$TranslationToJson(this);
}

@JsonSerializable()
class Revelation {
  @JsonKey(name: 'arab')
  String arab;

  @JsonKey(name: 'en')
  String en;

  @JsonKey(name: 'id')
  String id;

  Revelation({
    required this.arab,
    required this.en,
    required this.id,
  });
  factory Revelation.fromJson(Map<String, dynamic> json) =>
      _$RevelationFromJson(json);
  Map<String, dynamic> toJson() => _$RevelationToJson(this);
}

@JsonSerializable()
class DataTafsir {
  @JsonKey(name: 'id')
  String id;

  DataTafsir({
    required this.id,
  });
  factory DataTafsir.fromJson(Map<String, dynamic> json) =>
      _$DataTafsirFromJson(json);

  Map<String, dynamic> toJson() => _$DataTafsirToJson(this);
}

@JsonSerializable()
class Verse {
  @JsonKey(name: 'number')
  Number number;

  @JsonKey(name: 'meta')
  Meta meta;

  @JsonKey(name: 'text')
  TextQuran text;

  @JsonKey(name: 'translation')
  Translation translation;

  @JsonKey(name: 'audio')
  Audio audio;

  @JsonKey(name: 'tafsir')
  VerseTafsir tafsir;

  Verse({
    required this.number,
    required this.meta,
    required this.text,
    required this.translation,
    required this.audio,
    required this.tafsir,
  });

  factory Verse.fromJson(Map<String, dynamic> json) => _$VerseFromJson(json);

  Map<String, dynamic> toJson() => _$VerseToJson(this);
}

@JsonSerializable()
class Audio {
  @JsonKey(name: 'primary')
  String primary;

  @JsonKey(name: 'secondary')
  List<String> secondary;

  Audio({
    required this.primary,
    required this.secondary,
  });

  factory Audio.fromJson(Map<String, dynamic> json) => _$AudioFromJson(json);

  Map<String, dynamic> toJson() => _$AudioToJson(this);
}

@JsonSerializable()
class Meta {
  @JsonKey(name: 'juz')
  int juz;

  @JsonKey(name: 'page')
  int page;

  @JsonKey(name: 'manzil')
  int manzil;

  @JsonKey(name: 'ruku')
  int ruku;

  @JsonKey(name: 'hizbQuarter')
  int hizbQuarter;

  @JsonKey(name: 'sajda')
  Sajda sajda;

  Meta({
    required this.juz,
    required this.page,
    required this.manzil,
    required this.ruku,
    required this.hizbQuarter,
    required this.sajda,
  });
  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class Sajda {
  @JsonKey(name: 'recommended')
  bool recommended;

  @JsonKey(name: 'obligatory')
  bool obligatory;

  Sajda({
    required this.recommended,
    required this.obligatory,
  });
  factory Sajda.fromJson(Map<String, dynamic> json) => _$SajdaFromJson(json);

  Map<String, dynamic> toJson() => _$SajdaToJson(this);
}

@JsonSerializable()
class Number {
  @JsonKey(name: 'inQuran')
  int inQuran;

  @JsonKey(name: 'inSurah')
  int inSurah;

  Number({
    required this.inQuran,
    required this.inSurah,
  });

  factory Number.fromJson(Map<String, dynamic> json) => _$NumberFromJson(json);

  Map<String, dynamic> toJson() => _$NumberToJson(this);
}

@JsonSerializable()
class VerseTafsir {
  @JsonKey(name: 'id')
  Id id;

  VerseTafsir({
    required this.id,
  });

  factory VerseTafsir.fromJson(Map<String, dynamic> json) =>
      _$VerseTafsirFromJson(json);

  Map<String, dynamic> toJson() => _$VerseTafsirToJson(this);
}

@JsonSerializable()
class Id {
  @JsonKey(name: 'short')
  String short;

  @JsonKey(name: 'long')
  String long;
  Id({
    required this.short,
    required this.long,
  });

  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);

  Map<String, dynamic> toJson() => _$IdToJson(this);
}

@JsonSerializable()
class TextQuran {
  @JsonKey(name: 'arab')
  String arab;

  @JsonKey(name: 'transliteration')
  Transliteration transliteration;

  TextQuran({
    required this.arab,
    required this.transliteration,
  });

  factory TextQuran.fromJson(Map<String, dynamic> json) =>
      _$TextQuranFromJson(json);

  Map<String, dynamic> toJson() => _$TextQuranToJson(this);
}

@JsonSerializable()
class Transliteration {
  @JsonKey(name: 'en')
  String en;

  Transliteration({
    required this.en,
  });

  factory Transliteration.fromJson(Map<String, dynamic> json) =>
      _$TransliterationFromJson(json);

  Map<String, dynamic> toJson() => _$TransliterationToJson(this);
}
