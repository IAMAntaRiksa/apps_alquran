import 'package:json_annotation/json_annotation.dart';

part 'query_response.g.dart';

@JsonSerializable()
class Query {
  @JsonKey(name: 'format')
  final String format;
  @JsonKey(name: 'bahasa')
  final String bahasa;
  @JsonKey(name: 'bahasa2')
  final List<String> bahasa2;
  @JsonKey(name: 'surat')
  final String surat;
  @JsonKey(name: 'ayat')
  final String ayat;
  @JsonKey(name: 'ayat2')
  final List<int> ayat2;
  Query({
    required this.format,
    required this.bahasa,
    required this.bahasa2,
    required this.surat,
    required this.ayat,
    required this.ayat2,
  });

  factory Query.fromJson(Map<String, dynamic> json) => _$QueryFromJson(json);
}
