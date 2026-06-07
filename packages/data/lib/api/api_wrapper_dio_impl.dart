import 'package:data/api/api_wrapper.dart';
import 'package:dio/dio.dart';

class ApiWrapperDioImpl implements ApiWrapper {
  final Dio _dio;

  ApiWrapperDioImpl(this._dio);

  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    return _dio.get(
      path,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }
}
