import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/template_repository_provider.dart';
import 'template_usecase.dart';

part 'template_usecase_provider.g.dart';

@riverpod
TemplateUsecase templateUsecase(Ref ref) {
  return TemplateUsecase(ref.read(templateRepositoryProvider));
}
