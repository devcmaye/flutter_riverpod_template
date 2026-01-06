import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_testing/features/template/domain/usecases/template_usecase.dart';
import '../../../../core/network/error/failure.dart';
import '../../data/models/request/template_request.dart';
import '../../domain/entities/template_entity.dart';

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
  @override
  TemplateState build() => const TemplateState();

  Future<void> callTemplate(TemplateRequest request) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final usecase = ref.read(templateUsecaseProvider.notifier);
      final result = await usecase.call(request);
      state = state.copyWith(data: result, isLoading: false);
    } catch (e) {
      if (e is Failure) {
        state = state.copyWith(error: e, isLoading: false);
      } else {
        state = state.copyWith(error: Failure(e.toString()), isLoading: false);
      }
    }
  }
}
