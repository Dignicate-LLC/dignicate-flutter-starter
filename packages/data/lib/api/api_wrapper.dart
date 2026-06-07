import 'package:dio/dio.dart';

abstract interface class ApiWrapper {
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  });
  // Add other methods if needed (post, put, delete, etc.)
}
