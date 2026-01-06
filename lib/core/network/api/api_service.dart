import 'package:dio/dio.dart';

import '../models/base_response.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  /// POST
  Future<BaseResponse<T>> post<T>({
    required String path,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    required T Function(dynamic json) fromJsonT,
    CancelToken? cancelToken,
  }) async {
    final response = await dio.post(
      path,
      data: body,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
    );

    return BaseResponse<T>.fromJson(response.data, fromJsonT);
  }

  /// GET
  Future<BaseResponse<T>> get<T>({
    required String path,
    Map<String, dynamic>? queryParameters,
    required T Function(dynamic json) fromJsonT,
    CancelToken? cancelToken,
  }) async {
    final response = await dio.get(
      path,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
    );

    return BaseResponse<T>.fromJson(response.data, fromJsonT);
  }

  /// PUT
  Future<BaseResponse<T>> put<T>({
    required String path,
    Map<String, dynamic>? body,
    required T Function(dynamic json) fromJsonT,
    CancelToken? cancelToken,
  }) async {
    final response = await dio.put(path, data: body, cancelToken: cancelToken);

    return BaseResponse<T>.fromJson(response.data, fromJsonT);
  }

  /// DELETE
  Future<BaseResponse<T>> delete<T>({
    required String path,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    required T Function(dynamic json) fromJsonT,
    CancelToken? cancelToken,
  }) async {
    final response = await dio.delete(
      path,
      data: body,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
    );

    return BaseResponse<T>.fromJson(response.data, fromJsonT);
  }
}
