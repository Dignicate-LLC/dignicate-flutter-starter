import 'package:data/time/time_dto.dart';

abstract interface class TimeApiClient {
  Future<TimeDto> getTime();
}
