import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_testing/features/template/data/repositories/repository_provider.dart';

import '../../data/models/request/template_request.dart';
import '../../data/repositories/template_repository.dart';
import '../entities/template_entity.dart';

part 'template_usecase.g.dart'; // ← Generated file will appear here

@riverpod
class TemplateUsecaseNotifier extends _$TemplateUsecaseNotifier {
  late final TemplateRepository _repository;

  @override
  Future<TemplateEntity?> build() async {
    // Inject repository
    _repository = ref.read(templateRepositoryProvider);
    return null;
  }

  Future<TemplateEntity> call(TemplateRequest request) async {
    return _repository.callTemplate(request);
  }
}
