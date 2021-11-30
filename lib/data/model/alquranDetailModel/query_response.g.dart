// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query _$QueryFromJson(Map<String, dynamic> json) => Query(
      format: json['format'] as String,
      bahasa: json['bahasa'] as String,
      bahasa2:
          (json['bahasa2'] as List<dynamic>).map((e) => e as String).toList(),
      surat: json['surat'] as String,
      ayat: json['ayat'] as String,
      ayat2: (json['ayat2'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$QueryToJson(Query instance) => <String, dynamic>{
      'format': instance.format,
      'bahasa': instance.bahasa,
      'bahasa2': instance.bahasa2,
      'surat': instance.surat,
      'ayat': instance.ayat,
      'ayat2': instance.ayat2,
    };
