import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api/api_service_provider.dart';
import 'template_remote_datasource.dart';
import 'template_remote_datasource_impl.dart';

part 'template_remote_data_source_provider.g.dart';

@riverpod
TemplateRemoteDatasource templateRemoteDatasource(Ref ref) {
  return TemplateRemoteDatasourceImpl(ref.read(apiServiceProvider));
}
