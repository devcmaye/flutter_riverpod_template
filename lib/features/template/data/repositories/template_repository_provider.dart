import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'template_repository_impl.dart';
import '../datasources/template_remote_data_source_provider.dart';
import '../../domain/repositories/template_repository.dart';

part 'template_repository_provider.g.dart';

@riverpod
TemplateRepository templateRepository(Ref ref) {
  return TemplateRepositoryImpl(ref.read(templateRemoteDatasourceProvider));
}
