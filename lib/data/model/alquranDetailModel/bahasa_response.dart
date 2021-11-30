import 'package:json_annotation/json_annotation.dart';

part 'bahasa_response.g.dart';

@JsonSerializable()
class Bahasa {
  @JsonKey(name: 'bahasa')
  final BahasaModel bahasa;

  Bahasa({
    required this.bahasa,
  });

  factory Bahasa.fromJson(Map<String, dynamic> json) => _$BahasaFromJson(json);
}

@JsonSerializable()
class BahasaModel {
  @JsonKey(name: 'proses')
  final List<String> proses;
  @JsonKey(name: 'keteranga')
  final List<String> keteranga;
  BahasaModel({
    required this.proses,
    required this.keteranga,
  });

  factory BahasaModel.fromJson(Map<String, dynamic> json) =>
      _$BahasaModelFromJson(json);
}
