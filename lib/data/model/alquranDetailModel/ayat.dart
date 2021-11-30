import 'package:json_annotation/json_annotation.dart';

part 'ayat.g.dart';

@JsonSerializable()
class Ayat {
  @JsonKey(name: 'ayat')
  final AyatModel ayat;

  Ayat({
    required this.ayat,
  });

  factory Ayat.fromJson(Map<String, dynamic> json) => _$AyatFromJson(json);
}

@JsonSerializable()
class AyatModel {
  @JsonKey(name: 'proses')
  final List<int> proses;

  @JsonKey(name: 'data')
  final DataModel data;

  AyatModel({
    required this.proses,
    required this.data,
  });

  factory AyatModel.fromJson(Map<String, dynamic> json) =>
      _$AyatModelFromJson(json);
}

@JsonSerializable()
class DataModel {
  @JsonKey(name: 'id')
  final List<IdModel> id;
  @JsonKey(name: 'ar')
  final List<ArModel> ar;
  @JsonKey(name: 'idt')
  final List<IdtModel> idt;

  DataModel({
    required this.id,
    required this.ar,
    required this.idt,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}

@JsonSerializable()
class IdModel {
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'surat')
  final String? surat;
  @JsonKey(name: 'ayat')
  final String? ayat;
  @JsonKey(name: 'teks')
  final String? teks;

  IdModel({
    this.id,
    this.surat,
    this.ayat,
    this.teks,
  });

  factory IdModel.fromJson(Map<String, dynamic> json) =>
      _$IdModelFromJson(json);
}

@JsonSerializable()
class ArModel {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'surat')
  final String? surat;

  @JsonKey(name: 'ayat')
  final String? ayat;

  @JsonKey(name: 'teks')
  final String? teks;

  ArModel({
    this.id,
    this.surat,
    this.ayat,
    this.teks,
  });

  factory ArModel.fromJson(Map<String, dynamic> json) =>
      _$ArModelFromJson(json);
}

@JsonSerializable()
class IdtModel {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'surat')
  final String? surat;

  @JsonKey(name: 'ayat')
  final String? ayat;

  @JsonKey(name: 'teks')
  final String? teks;

  IdtModel({
    this.id,
    this.surat,
    this.ayat,
    this.teks,
  });

  factory IdtModel.fromJson(Map<String, dynamic> json) =>
      _$IdtModelFromJson(json);
}
