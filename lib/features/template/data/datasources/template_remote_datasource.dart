import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/network/api/api_service_provider.dart';
import '../../../../core/network/models/base_response.dart';
import '../models/dto/template_dto.dart';
import '../models/request/template_request.dart';
import 'template_remote_datasource_impl.dart';

abstract class TemplateRemoteDatasource {
  Future<BaseResponse<TemplateDto>> callTemplateData(TemplateRequest request);
}
