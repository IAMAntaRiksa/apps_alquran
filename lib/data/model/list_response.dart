import 'package:json_annotation/json_annotation.dart';

part 'list_response.g.dart';

@JsonSerializable(
  genericArgumentFactories: true,
  anyMap: true,
)
class ListResponse<T> {
  @JsonKey(name: 'hasil')
  final List<T> hasil;
  
  ListResponse({
    required this.hasil,
  });

  factory ListResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) josnFromT) =>
      _$ListResponseFromJson(json, josnFromT);
}
