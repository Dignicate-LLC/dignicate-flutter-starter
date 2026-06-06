import 'package:core/utils/logger_util.dart';
import 'package:data/api/time_api_client.dart';
import 'package:dio/dio.dart';
import 'package:domain/resource.dart';
import 'package:domain/time/time_info.dart';
import 'package:domain/time/time_repository.dart';

class TimeRepositoryImpl implements TimeRepository {
  final TimeApiClient _apiClient;

  TimeRepositoryImpl(this._apiClient);

  @override
  Future<Resource<TimeInfo>> getCurrentTime() async {
    try {
      final dto = await _apiClient.getTime();
      return Resource.data(
        data: TimeInfo(
          utc: dto.utc,
          millis: dto.millis,
          unixSeconds: dto.unixSeconds,
          iso8601: dto.iso8601,
        ),
      );
    } on DioException catch (e, stackTrace) {
      logger.e('TimeRepositoryImpl DioException', error: e, stackTrace: stackTrace);
      return Resource.error(message: e.message ?? 'Network error');
    } catch (e, stackTrace) {
      logger.e('TimeRepositoryImpl unexpected error', error: e, stackTrace: stackTrace);
      return Resource.error(message: e.toString());
    }
  }
}
