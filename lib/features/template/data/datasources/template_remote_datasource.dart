import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_testing/core/network/api/api_constant.dart';
import '../../../../core/network/api/api_service.dart';
import '../../../../core/network/api/api_service_provider.dart';
import '../../../../core/network/models/base_response.dart';
import '../models/dto/template_dto.dart';
import '../models/request/template_request.dart';

part 'template_remote_datasource.g.dart';

class TemplateRemoteDatasource {
  final ApiService _api;

  TemplateRemoteDatasource(this._api);

  Future<BaseResponse<TemplateDto>> callTemplateData(TemplateRequest request) {
    return _api.post<TemplateDto>(
      path: ApiConstant.login,
      body: request.toJson(),
      fromJsonT: (json) => TemplateDto.fromJson(json),
    );
  }
}

@riverpod
TemplateRemoteDatasource authRemoteDataSource(Ref ref) {
  return TemplateRemoteDatasource(ref.read(apiServiceProvider));
}
