import '../../data/models/request/template_request.dart';
import '../repositories/template_repository.dart';
import '../entities/template_entity.dart';

class TemplateUsecase {
  final TemplateRepository _repository;

  TemplateUsecase(this._repository);

  Future<TemplateEntity> execute(TemplateRequest request) {
    return _repository.callTemplate(request);
  }
}
