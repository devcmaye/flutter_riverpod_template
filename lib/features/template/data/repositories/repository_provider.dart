import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_testing/core/network/api/api_service_provider.dart';
import '../../domain/repositories/template_repository_impl.dart';
import '../datasources/template_remote_datasource.dart';
import 'template_repository.dart';

part 'repository_provider.g.dart';

@riverpod
TemplateRepository templateRepository(Ref ref) {
  final remoteDatasource = TemplateRemoteDatasource(
    ref.read(apiServiceProvider), // read ApiService
  );
  return TemplateRepositoryImpl(remoteDatasource);
}
