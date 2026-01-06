import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../dio/dio_provider.dart';
import 'api_service.dart';

part 'api_service_provider.g.dart';

@riverpod
ApiService apiService(Ref ref) {
  return ApiService(ref.read(dioProvider));
}
