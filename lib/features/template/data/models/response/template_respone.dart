import '../../../../../core/network/models/base_response.dart';
import '../dto/template_dto.dart';

class TemplateRespone {
  final BaseResponse<TemplateDto> base;

  const TemplateRespone({required this.base});

  factory TemplateRespone.fromJson(Map<String, dynamic> json) {
    return TemplateRespone(
      base: BaseResponse.fromJson(json, (data) => TemplateDto.fromJson(data)),
    );
  }
}
