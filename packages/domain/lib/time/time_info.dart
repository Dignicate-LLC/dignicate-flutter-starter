class TimeInfo {
  final String utc;
  final int millis;
  final int unixSeconds;
  final String iso8601;

  const TimeInfo({
    required this.utc,
    required this.millis,
    required this.unixSeconds,
    required this.iso8601,
  });
}
