// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_surah_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuranSurahResponse _$QuranSurahResponseFromJson(Map<String, dynamic> json) =>
    QuranSurahResponse(
      nomor: json['nomor'] as String?,
      nama: json['nama'] as String?,
      asma: json['asma'] as String?,
      start: json['start'] as String?,
      ayat: json['ayat'] as String?,
      type: json['type'] as String?,
      urut: json['urut'] as String?,
      rukuk: json['rukuk'] as String?,
      arti: json['arti'] as String?,
      keterangan: json['keterangan'] as String?,
    );

Map<String, dynamic> _$QuranSurahResponseToJson(QuranSurahResponse instance) =>
    <String, dynamic>{
      'nomor': instance.nomor,
      'nama': instance.nama,
      'asma': instance.asma,
      'start': instance.start,
      'ayat': instance.ayat,
      'type': instance.type,
      'urut': instance.urut,
      'rukuk': instance.rukuk,
      'arti': instance.arti,
      'keterangan': instance.keterangan,
    };
