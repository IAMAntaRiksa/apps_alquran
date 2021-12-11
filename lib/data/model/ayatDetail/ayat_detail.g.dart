// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayat_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlquranDetail _$AlquranDetailFromJson(Map<String, dynamic> json) =>
    AlquranDetail(
      code: json['code'] as int,
      status: json['status'] as String,
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AlquranDetailToJson(AlquranDetail instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      number: json['number'] as int?,
      sequence: json['sequence'] as int,
      numberOfVerses: json['numberOfVerses'] as int,
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      revelation:
          Revelation.fromJson(json['revelation'] as Map<String, dynamic>),
      tafsir: DataTafsir.fromJson(json['tafsir'] as Map<String, dynamic>),
      preBismillah: json['perBismillah'],
      verses: (json['verses'] as List<dynamic>)
          .map((e) => Verse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'number': instance.number,
      'sequence': instance.sequence,
      'numberOfVerses': instance.numberOfVerses,
      'name': instance.name,
      'revelation': instance.revelation,
      'tafsir': instance.tafsir,
      'perBismillah': instance.preBismillah,
      'verses': instance.verses,
    };

Name _$NameFromJson(Map<String, dynamic> json) => Name(
      short: json['short'] as String?,
      long: json['long'] as String,
      transliteration:
          Translation.fromJson(json['transliteration'] as Map<String, dynamic>),
      translation:
          Translation.fromJson(json['translation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'short': instance.short,
      'long': instance.long,
      'transliteration': instance.transliteration,
      'translation': instance.translation,
    };

Translation _$TranslationFromJson(Map<String, dynamic> json) => Translation(
      en: json['en'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$TranslationToJson(Translation instance) =>
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

DataTafsir _$DataTafsirFromJson(Map<String, dynamic> json) => DataTafsir(
      id: json['id'] as String,
    );

Map<String, dynamic> _$DataTafsirToJson(DataTafsir instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Verse _$VerseFromJson(Map<String, dynamic> json) => Verse(
      number: Number.fromJson(json['number'] as Map<String, dynamic>),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      text: TextQuran.fromJson(json['text'] as Map<String, dynamic>),
      translation:
          Translation.fromJson(json['translation'] as Map<String, dynamic>),
      audio: Audio.fromJson(json['audio'] as Map<String, dynamic>),
      tafsir: VerseTafsir.fromJson(json['tafsir'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerseToJson(Verse instance) => <String, dynamic>{
      'number': instance.number,
      'meta': instance.meta,
      'text': instance.text,
      'translation': instance.translation,
      'audio': instance.audio,
      'tafsir': instance.tafsir,
    };

Audio _$AudioFromJson(Map<String, dynamic> json) => Audio(
      primary: json['primary'] as String,
      secondary:
          (json['secondary'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AudioToJson(Audio instance) => <String, dynamic>{
      'primary': instance.primary,
      'secondary': instance.secondary,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      juz: json['juz'] as int,
      page: json['page'] as int,
      manzil: json['manzil'] as int,
      ruku: json['ruku'] as int,
      hizbQuarter: json['hizbQuarter'] as int,
      sajda: Sajda.fromJson(json['sajda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'juz': instance.juz,
      'page': instance.page,
      'manzil': instance.manzil,
      'ruku': instance.ruku,
      'hizbQuarter': instance.hizbQuarter,
      'sajda': instance.sajda,
    };

Sajda _$SajdaFromJson(Map<String, dynamic> json) => Sajda(
      recommended: json['recommended'] as bool,
      obligatory: json['obligatory'] as bool,
    );

Map<String, dynamic> _$SajdaToJson(Sajda instance) => <String, dynamic>{
      'recommended': instance.recommended,
      'obligatory': instance.obligatory,
    };

Number _$NumberFromJson(Map<String, dynamic> json) => Number(
      inQuran: json['inQuran'] as int,
      inSurah: json['inSurah'] as int,
    );

Map<String, dynamic> _$NumberToJson(Number instance) => <String, dynamic>{
      'inQuran': instance.inQuran,
      'inSurah': instance.inSurah,
    };

VerseTafsir _$VerseTafsirFromJson(Map<String, dynamic> json) => VerseTafsir(
      id: Id.fromJson(json['id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerseTafsirToJson(VerseTafsir instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Id _$IdFromJson(Map<String, dynamic> json) => Id(
      short: json['short'] as String,
      long: json['long'] as String,
    );

Map<String, dynamic> _$IdToJson(Id instance) => <String, dynamic>{
      'short': instance.short,
      'long': instance.long,
    };

TextQuran _$TextQuranFromJson(Map<String, dynamic> json) => TextQuran(
      arab: json['arab'] as String,
      transliteration: Transliteration.fromJson(
          json['transliteration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextQuranToJson(TextQuran instance) => <String, dynamic>{
      'arab': instance.arab,
      'transliteration': instance.transliteration,
    };

Transliteration _$TransliterationFromJson(Map<String, dynamic> json) =>
    Transliteration(
      en: json['en'] as String,
    );

Map<String, dynamic> _$TransliterationToJson(Transliteration instance) =>
    <String, dynamic>{
      'en': instance.en,
    };
