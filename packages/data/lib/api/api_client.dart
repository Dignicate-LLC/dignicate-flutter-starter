import 'package:dio/dio.dart';

Dio buildDioClient() => Dio(
      BaseOptions(
        baseUrl: 'https://freeapi.dignicate.com',
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    )..interceptors.add(LogInterceptor(responseBody: true));
