import 'package:json_annotation/json_annotation.dart';

part 'time_dto.g.dart';

@JsonSerializable(createToJson: false)
class TimeDto {
  final String utc;
  final int millis;
  final int unixSeconds;
  final String iso8601;

  const TimeDto({
    required this.utc,
    required this.millis,
    required this.unixSeconds,
    required this.iso8601,
  });

  factory TimeDto.fromJson(Map<String, dynamic> json) =>
      _$TimeDtoFromJson(json);
}
