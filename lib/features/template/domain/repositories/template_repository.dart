import 'package:riverpod_testing/features/template/domain/entities/template_entity.dart';

import '../../data/models/request/template_request.dart';

abstract class TemplateRepository {
  Future<TemplateEntity> callTemplate(TemplateRequest request);
}
