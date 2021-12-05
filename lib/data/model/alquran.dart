import 'package:json_annotation/json_annotation.dart';

part 'alquran.g.dart';

@JsonSerializable()
class AlquranModel {
  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'data')
  List<Data> data;

  AlquranModel({
    required this.code,
    required this.status,
    required this.message,
    required this.data,
  });

  factory AlquranModel.fromJson(Map<String, dynamic> json) =>
      _$AlquranModelFromJson(json);
  Map<String, dynamic> toJson() => _$AlquranModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: 'number')
  int number;

  @JsonKey(name: 'sequence')
  int sequence;

  @JsonKey(name: 'numberOfVerses')
  int numberOfVerses;

  @JsonKey(name: 'name')
  Name name;

  @JsonKey(name: 'revelation')
  Revelation revelation;

  @JsonKey(name: 'tafsir')
  Tafsir tafsir;

  Data(
      {required this.number,
      required this.sequence,
      required this.numberOfVerses,
      required this.name,
      required this.revelation,
      required this.tafsir});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Name {
  @JsonKey(name: 'short')
  String short;

  @JsonKey(name: 'long')
  String long;

  @JsonKey(name: 'transliteration')
  TransliterationAlQuran transliteration;

  @JsonKey(name: 'translation')
  TransliterationAlQuran translation;

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
class TransliterationAlQuran {
  @JsonKey(name: 'en')
  String en;

  @JsonKey(name: 'id')
  String id;

  TransliterationAlQuran({required this.en, required this.id});

  factory TransliterationAlQuran.fromJson(Map<String, dynamic> json) =>
      _$TransliterationAlQuranFromJson(json);

  Map<String, dynamic> toJson() => _$TransliterationAlQuranToJson(this);
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
class Tafsir {
  @JsonKey(name: 'id')
  String id;

  Tafsir({required this.id});

  factory Tafsir.fromJson(Map<String, dynamic> json) => _$TafsirFromJson(json);

  Map<String, dynamic> toJson() => _$TafsirToJson(this);
}
