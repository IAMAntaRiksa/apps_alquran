// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ModelAlquranDetailAdapter extends TypeAdapter<ModelAlquranDetail> {
  @override
  final int typeId = 1;

  @override
  ModelAlquranDetail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ModelAlquranDetail(
      number: fields[0] as int,
      name: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ModelAlquranDetail obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.number)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModelAlquranDetailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
