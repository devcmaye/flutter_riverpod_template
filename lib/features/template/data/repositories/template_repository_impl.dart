import '../../../../core/network/error/failure.dart';
import '../datasources/template_remote_datasource.dart';
import '../models/dto/template_dto.dart';
import '../models/request/template_request.dart';
import '../../domain/repositories/template_repository.dart';
import '../../domain/entities/template_entity.dart';

class TemplateRepositoryImpl extends TemplateRepository {
  final TemplateRemoteDatasource remoteDatasource;

  TemplateRepositoryImpl(this.remoteDatasource);

  @override
  Future<TemplateEntity> callTemplate(TemplateRequest request) async {
    try {
      final response = await remoteDatasource.callTemplateData(request);
      // Check api success or not
      if (response.success == false) {
        throw Failure(response.message ?? 'API returned failure');
      }
      // Check if API returned data
      if (response.data == null) {
        throw Failure('Response data is null');
      }

      final TemplateDto dto = response.data!;
      return dto.toEntity();
    } catch (e) {
      // Network or parsing error
      if (e is Failure) rethrow; // Already a custom failure
      // throw Failure(e.toString());
      throw Failure(
        'Unexpected error response from server',
      ); // use user familier response
    }
  }
}
