// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ayat _$AyatFromJson(Map<String, dynamic> json) => Ayat(
      ayat: AyatModel.fromJson(json['ayat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AyatToJson(Ayat instance) => <String, dynamic>{
      'ayat': instance.ayat,
    };

AyatModel _$AyatModelFromJson(Map<String, dynamic> json) => AyatModel(
      proses: (json['proses'] as List<dynamic>).map((e) => e as int).toList(),
      data: DataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AyatModelToJson(AyatModel instance) => <String, dynamic>{
      'proses': instance.proses,
      'data': instance.data,
    };

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      id: (json['id'] as List<dynamic>)
          .map((e) => IdModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ar: (json['ar'] as List<dynamic>)
          .map((e) => ArModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      idt: (json['idt'] as List<dynamic>)
          .map((e) => IdtModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'id': instance.id,
      'ar': instance.ar,
      'idt': instance.idt,
    };

IdModel _$IdModelFromJson(Map<String, dynamic> json) => IdModel(
      id: json['id'] as String?,
      surat: json['surat'] as String?,
      ayat: json['ayat'] as String?,
      teks: json['teks'] as String?,
    );

Map<String, dynamic> _$IdModelToJson(IdModel instance) => <String, dynamic>{
      'id': instance.id,
      'surat': instance.surat,
      'ayat': instance.ayat,
      'teks': instance.teks,
    };

ArModel _$ArModelFromJson(Map<String, dynamic> json) => ArModel(
      id: json['id'] as String?,
      surat: json['surat'] as String?,
      ayat: json['ayat'] as String?,
      teks: json['teks'] as String?,
    );

Map<String, dynamic> _$ArModelToJson(ArModel instance) => <String, dynamic>{
      'id': instance.id,
      'surat': instance.surat,
      'ayat': instance.ayat,
      'teks': instance.teks,
    };

IdtModel _$IdtModelFromJson(Map<String, dynamic> json) => IdtModel(
      id: json['id'] as String?,
      surat: json['surat'] as String?,
      ayat: json['ayat'] as String?,
      teks: json['teks'] as String?,
    );

Map<String, dynamic> _$IdtModelToJson(IdtModel instance) => <String, dynamic>{
      'id': instance.id,
      'surat': instance.surat,
      'ayat': instance.ayat,
      'teks': instance.teks,
    };
