import 'package:dio/dio.dart';
import 'package:riverpod_testing/core/network/api/api_constant.dart';
import 'package:riverpod_testing/features/template/data/models/request/template_request.dart';
import 'package:riverpod_testing/features/template/data/models/response/template_respone.dart';

class ApiService {
  final Dio _dio;
  ApiService(this._dio);

  Future<TemplateRespone> callTemplate(
    TemplateRequest request, {
    CancelToken? cancelToken,
  }) async {
    try {
      Response response = await _dio.post(
        ApiConstant.login,
        data: request.toJson(),
        cancelToken: cancelToken,
      );
      return TemplateRespone.fromJson(response.data);
    } on DioException {
      rethrow;
    }
  }
}
