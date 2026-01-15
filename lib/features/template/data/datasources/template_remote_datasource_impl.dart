import 'package:dio/dio.dart';
import 'package:riverpod_testing/core/network/models/base_response.dart';
import 'package:riverpod_testing/features/template/data/datasources/template_remote_datasource.dart';
import 'package:riverpod_testing/features/template/data/models/dto/template_dto.dart';
import 'package:riverpod_testing/features/template/data/models/request/template_request.dart';

import '../../../../core/network/api/api_service.dart';

class TemplateRemoteDatasourceImpl extends TemplateRemoteDatasource {
  final ApiService _apiService;
  TemplateRemoteDatasourceImpl(this._apiService);

  @override
  Future<BaseResponse<TemplateDto>> callTemplateData(
    TemplateRequest request,
  ) async {
    try {
      var res = await _apiService.callTemplate(request);
      return res.base;
    } on DioException {
      rethrow;
    }
  }
}
