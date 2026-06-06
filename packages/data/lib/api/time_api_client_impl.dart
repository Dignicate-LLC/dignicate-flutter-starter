import 'package:data/api/time_api_client.dart';
import 'package:data/time/time_dto.dart';
import 'package:dio/dio.dart';

class TimeApiClientImpl implements TimeApiClient {
  final Dio _dio;

  TimeApiClientImpl(this._dio);

  @override
  Future<TimeDto> getTime() async {
    final response = await _dio.get<Map<String, dynamic>>('/time/v1/current');
    return TimeDto.fromJson(response.data!);
  }
}
