import 'package:domain/resource.dart';
import 'package:domain/time/time_info.dart';

abstract interface class TimeRepository {
  Future<Resource<TimeInfo>> getCurrentTime();
}
