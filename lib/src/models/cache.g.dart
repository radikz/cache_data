// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CacheAdapter extends TypeAdapter<Cache> {
  @override
  final int typeId = 0;

  @override
  Cache read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    final duration = fields[3] as int;
    return Cache(
      url: fields[0] as String,
      data: fields[1] as String,
      time: fields[2] as DateTime,
      duration: Duration(seconds: duration),
    );
  }

  @override
  void write(BinaryWriter writer, Cache obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.url)
      ..writeByte(1)
      ..write(obj.data)
      ..writeByte(2)
      ..write(obj.time)
      ..writeByte(3)
      ..write(obj.duration.inSeconds);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CacheAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
