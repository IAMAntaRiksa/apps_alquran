// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListResponse<T> _$ListResponseFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
    ListResponse<T>(
      hasil: (json['hasil'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$ListResponseToJson<T>(
  ListResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'hasil': instance.hasil.map(toJsonT).toList(),
    };
