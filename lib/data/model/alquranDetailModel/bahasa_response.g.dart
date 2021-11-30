// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bahasa_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bahasa _$BahasaFromJson(Map<String, dynamic> json) => Bahasa(
      bahasa: BahasaModel.fromJson(json['bahasa'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BahasaToJson(Bahasa instance) => <String, dynamic>{
      'bahasa': instance.bahasa,
    };

BahasaModel _$BahasaModelFromJson(Map<String, dynamic> json) => BahasaModel(
      proses:
          (json['proses'] as List<dynamic>).map((e) => e as String).toList(),
      keteranga:
          (json['keteranga'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BahasaModelToJson(BahasaModel instance) =>
    <String, dynamic>{
      'proses': instance.proses,
      'keteranga': instance.keteranga,
    };
