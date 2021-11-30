// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Surat _$SuratFromJson(Map<String, dynamic> json) => Surat(
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

Map<String, dynamic> _$SuratToJson(Surat instance) => <String, dynamic>{
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
