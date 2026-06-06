import 'package:domain/resource.dart';
import 'package:domain/time/time_info.dart';
import 'package:domain/time/time_repository.dart';

class TimeRepositoryImpl implements TimeRepository {
  @override
  Future<Resource<TimeInfo>> getCurrentTime() async {
    try {
      final now = DateTime.now();
      final timeInfo = TimeInfo(
        utc: now.toUtc().toIso8601String(),
        millis: now.millisecondsSinceEpoch,
        unixSeconds: now.millisecondsSinceEpoch ~/ 1000,
        iso8601: now.toIso8601String(),
      );
      return Resource.data(data: timeInfo);
    } catch (e) {
      return Resource.error(message: e.toString());
    }
  }
}
