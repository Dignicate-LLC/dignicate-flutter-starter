import 'package:core/utils/logger_util.dart';
import 'package:data/api/api_wrapper.dart';
import 'package:data/time/time_dto.dart';
import 'package:dio/dio.dart';
import 'package:domain/resource.dart';
import 'package:domain/time/time_info.dart';
import 'package:domain/time/time_repository.dart';

class TimeRepositoryImpl implements TimeRepository {
  final ApiWrapper _apiWrapper;

  TimeRepositoryImpl(this._apiWrapper);

  @override
  Future<Resource<TimeInfo>> getCurrentTime() async {
    try {
      final response = await _apiWrapper.get<Map<String, dynamic>>('/time/v1/current');
      final dto = TimeDto.fromJson(response.data!);
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
