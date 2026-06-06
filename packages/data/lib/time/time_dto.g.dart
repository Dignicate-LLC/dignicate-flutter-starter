// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeDto _$TimeDtoFromJson(Map<String, dynamic> json) => TimeDto(
  utc: json['utc'] as String,
  millis: (json['millis'] as num).toInt(),
  unixSeconds: (json['unixSeconds'] as num).toInt(),
  iso8601: json['iso8601'] as String,
);
