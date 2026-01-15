import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/network/error/failure.dart';
import '../../data/models/request/template_request.dart';
import '../../domain/entities/template_entity.dart';
import '../../domain/usecases/template_usecase.dart';
import '../../domain/usecases/template_usecase_provider.dart';

part 'template_provider.g.dart';

class TemplateState {
  final TemplateEntity? data;
  final bool isLoading;
  final Failure? error;

  const TemplateState({this.data, this.isLoading = false, this.error});

  TemplateState copyWith({
    TemplateEntity? data,
    bool? isLoading,
    Failure? error,
  }) {
    return TemplateState(
      data: data ?? this.data,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}

@riverpod
class TemplateNotifier extends _$TemplateNotifier {
  late final TemplateUsecase _usecase;

  @override
  TemplateState build() {
    _usecase = ref.read(templateUsecaseProvider);
    return const TemplateState();
  }

  Future<void> callTemplate(TemplateRequest request) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final result = await _usecase.execute(request);

      state = state.copyWith(data: result, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e is Failure ? e : Failure(e.toString()),
      );
    }
  }
}
