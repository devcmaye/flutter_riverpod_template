import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path/path.dart';

import '../models/master_api_return_object.dart';

class ApiNetworkService {
  final Dio dio;

  ApiNetworkService({required this.dio});

  /// GET Request
  Future<R> getServerCall<T extends MasterApiReturnObject<dynamic>, R>(
    T obj,
    String url, {
    bool useHeaderToken = false,
    String? headerToken,
    Map<String, dynamic>? queryParameters = const {},
    Map<String, dynamic>? body = const {},
  }) async {
    try {
      final options = Options(
        headers:
            useHeaderToken && headerToken != null
                ? {'Authorization': headerToken}
                : {},
      );
      final response = await dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        data: body,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;
        if (data is Map) {
          return obj.fromMap(data) as R;
        } else if (data is List) {
          return obj.fromMap(data) as R;
        } else {
          throw Exception("Unexpected response type: ${data.runtimeType}");
        }
      } else {
        throw Exception(
          "Failed with status code: ${response.statusCode}, message: ${response.statusMessage}",
        );
      }
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  /// POST Request
  Future<R> postServerCall<T extends MasterApiReturnObject<dynamic>, R>(
    T obj,
    String url, {
    bool useHeaderToken = false,
    String? headerToken,
    Map<String, dynamic>? body = const {},
    Map<String, dynamic>? queryParameters = const {},
    FormData? formData,
    Function(int sent, int total)? onSendProgressData,
    Function(double progress)? onProgress,
    CancelToken? cancelToken,
  }) async {
    try {
      final options = Options(
        headers:
            useHeaderToken && headerToken != null
                ? {'Authorization': headerToken}
                : {},
      );

      final response = await dio.post(
        url,
        options: options,
        data: formData ?? body,
        cancelToken: cancelToken,
        queryParameters: queryParameters,
        onSendProgress: (int sent, int total) {
          if (total > 0) {
            double progress = sent / total;
            if (onProgress != null) {
              onProgress(progress);
            }
          }
          onSendProgressData?.call(sent, total);
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;
        if (data is Map) {
          return obj.fromMap(data) as R;
        } else {
          throw Exception("Unexpected response type: ${data.runtimeType}");
        }
      } else {
        throw Exception(
          "Failed with status code: ${response.statusCode}, message: ${response.statusMessage}",
        );
      }
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  /// PUT Request
  Future<R> putServerCall<T extends MasterApiReturnObject<dynamic>, R>(
    T obj,
    String url, {
    bool useHeaderToken = false,
    String? headerToken,
    Map<String, dynamic>? body = const {},
  }) async {
    try {
      final options = Options(
        headers:
            useHeaderToken && headerToken != null
                ? {'Authorization': headerToken}
                : {},
      );

      final response = await dio.put(url, options: options, data: body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;
        if (data is Map) {
          return obj.fromMap(data) as R;
        } else {
          throw Exception("Unexpected response type: ${data.runtimeType}");
        }
      } else {
        throw Exception(
          "Failed with status code: ${response.statusCode}, message: ${response.statusMessage}",
        );
      }
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  /// File Upload
  Future<R> uploadFile<T extends MasterApiReturnObject<dynamic>, R>(
    T obj,
    String url, {
    required String fileKey,
    required File file,
    Map<String, dynamic>? fields = const {},
    bool useHeaderToken = false,
    String? headerToken,
  }) async {
    try {
      final options = Options(
        headers:
            useHeaderToken && headerToken != null
                ? {'Authorization': headerToken}
                : {},
      );

      final formData = FormData.fromMap({
        ...fields!,
        fileKey: await MultipartFile.fromFile(
          file.path,
          filename: basename(file.path),
        ),
      });

      final response = await dio.post(url, options: options, data: formData);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;
        if (data is Map) {
          return obj.fromMap(data) as R;
        } else {
          throw Exception("Unexpected response type: ${data.runtimeType}");
        }
      } else {
        throw Exception(
          "Failed with status code: ${response.statusCode}, message: ${response.statusMessage}",
        );
      }
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  /// DELETE Request
  Future<R> deleteServerCall<T extends MasterApiReturnObject<dynamic>, R>(
    T obj,
    String url, {
    bool useHeaderToken = false,
    String? headerToken,
    Map<String, dynamic>? body = const {},
  }) async {
    try {
      final options = Options(
        headers:
            useHeaderToken && headerToken != null
                ? {'Authorization': headerToken}
                : {},
      );

      final response = await dio.delete(url, options: options, data: body);

      if (response.statusCode == 200 || response.statusCode == 204) {
        final data = response.data;
        if (data is Map) {
          return obj.fromMap(data) as R;
        } else if (data == null) {
          return obj as R; // Return the object itself if response is empty
        } else {
          throw Exception("Unexpected response type: ${data.runtimeType}");
        }
      } else {
        throw Exception(
          "Failed with status code: ${response.statusCode}, message: ${response.statusMessage}",
        );
      }
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
