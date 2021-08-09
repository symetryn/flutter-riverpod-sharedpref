library api;

import 'package:dio/dio.dart';
import 'package:flutter_skeleton/config.dart';

var options = BaseOptions(
  baseUrl: Config.BASE_URL,
  connectTimeout: 5000,
  receiveTimeout: 3000,
);

void _requestInterceptor(
  RequestOptions options,
  RequestInterceptorHandler handler,
) async {
  handler.next(options);
}

void _responseInterceptor(
  Response<dynamic> response,
  ResponseInterceptorHandler handler,
) async {
  handler.next(response);
}

void _errorInterceptor(
  DioError err,
  ErrorInterceptorHandler handler,
) async {
  handler.next(err);
}

Dio httpClient = Dio(options)
  ..interceptors.add(InterceptorsWrapper(
    onRequest: _requestInterceptor,
    onResponse: _responseInterceptor,
    onError: _errorInterceptor,
  ));
