import 'package:json_annotation/json_annotation.dart';

part 'surat_response.g.dart';

@JsonSerializable()
class Surat {
  @JsonKey(name: 'nomor')
  final String? nomor;

  @JsonKey(name: 'nama')
  final String? nama;

  @JsonKey(name: 'asma')
  final String? asma;

  @JsonKey(name: 'start')
  final String? start;

  @JsonKey(name: 'ayat')
  final String? ayat;

  @JsonKey(name: 'type')
  final String? type;

  @JsonKey(name: 'urut')
  final String? urut;

  @JsonKey(name: 'rukuk')
  final String? rukuk;

  @JsonKey(name: 'arti')
  final String? arti;

  @JsonKey(name: 'keterangan')
  final String? keterangan;

  Surat({
    this.nomor,
    this.nama,
    this.asma,
    this.start,
    this.ayat,
    this.type,
    this.urut,
    this.rukuk,
    this.arti,
    this.keterangan,
  });

  factory Surat.fromJson(Map<String, dynamic> json) => _$SuratFromJson(json);
}
