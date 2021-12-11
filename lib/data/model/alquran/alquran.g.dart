// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alquran.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Alquran _$AlquranFromJson(Map<String, dynamic> json) => Alquran(
      code: json['code'] as int,
      status: json['status'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlquranToJson(Alquran instance) => <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      number: json['number'] as int,
      sequence: json['sequence'] as int,
      numberOfVerses: json['numberOfVerses'] as int,
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      revelation:
          Revelation.fromJson(json['revelation'] as Map<String, dynamic>),
      tafsir: Tafsir.fromJson(json['tafsir'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'number': instance.number,
      'sequence': instance.sequence,
      'numberOfVerses': instance.numberOfVerses,
      'name': instance.name,
      'revelation': instance.revelation,
      'tafsir': instance.tafsir,
    };

Name _$NameFromJson(Map<String, dynamic> json) => Name(
      short: json['short'] as String,
      long: json['long'] as String,
      transliteration: TransliterationAlQuran.fromJson(
          json['transliteration'] as Map<String, dynamic>),
      translation: TransliterationAlQuran.fromJson(
          json['translation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'short': instance.short,
      'long': instance.long,
      'transliteration': instance.transliteration,
      'translation': instance.translation,
    };

TransliterationAlQuran _$TransliterationAlQuranFromJson(
        Map<String, dynamic> json) =>
    TransliterationAlQuran(
      en: json['en'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$TransliterationAlQuranToJson(
        TransliterationAlQuran instance) =>
    <String, dynamic>{
      'en': instance.en,
      'id': instance.id,
    };

Revelation _$RevelationFromJson(Map<String, dynamic> json) => Revelation(
      arab: json['arab'] as String,
      en: json['en'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$RevelationToJson(Revelation instance) =>
    <String, dynamic>{
      'arab': instance.arab,
      'en': instance.en,
      'id': instance.id,
    };

Tafsir _$TafsirFromJson(Map<String, dynamic> json) => Tafsir(
      id: json['id'] as String,
    );

Map<String, dynamic> _$TafsirToJson(Tafsir instance) => <String, dynamic>{
      'id': instance.id,
    };
