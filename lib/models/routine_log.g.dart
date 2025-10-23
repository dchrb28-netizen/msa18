// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_log.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RoutineLogAdapter extends TypeAdapter<RoutineLog> {
  @override
  final int typeId = 14;

  @override
  RoutineLog read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RoutineLog(
      routineName: fields[0] as String,
      date: fields[1] as DateTime,
      exerciseLogs: (fields[2] as List).cast<ExerciseLog>(),
      duration: fields[3] as Duration,
      notes: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RoutineLog obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.routineName)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.exerciseLogs)
      ..writeByte(3)
      ..write(obj.duration)
      ..writeByte(4)
      ..write(obj.notes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoutineLogAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoutineLog _$RoutineLogFromJson(Map<String, dynamic> json) => RoutineLog(
      routineName: json['routineName'] as String,
      date: DateTime.parse(json['date'] as String),
      exerciseLogs: (json['exerciseLogs'] as List<dynamic>)
          .map((e) => ExerciseLog.fromJson(e as Map<String, dynamic>))
          .toList(),
      duration: json['duration'] == null
          ? Duration.zero
          : Duration(microseconds: (json['duration'] as num).toInt()),
      notes: json['notes'] as String? ?? '',
    );

Map<String, dynamic> _$RoutineLogToJson(RoutineLog instance) =>
    <String, dynamic>{
      'routineName': instance.routineName,
      'date': instance.date.toIso8601String(),
      'exerciseLogs': instance.exerciseLogs.map((e) => e.toJson()).toList(),
      'duration': instance.duration.inMicroseconds,
      'notes': instance.notes,
    };
