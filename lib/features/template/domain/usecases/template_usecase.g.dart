// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TemplateUsecaseNotifier)
final templateUsecaseProvider = TemplateUsecaseNotifierProvider._();

final class TemplateUsecaseNotifierProvider
    extends $AsyncNotifierProvider<TemplateUsecaseNotifier, TemplateEntity?> {
  TemplateUsecaseNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'templateUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$templateUsecaseNotifierHash();

  @$internal
  @override
  TemplateUsecaseNotifier create() => TemplateUsecaseNotifier();
}

String _$templateUsecaseNotifierHash() =>
    r'd611518fa568e5123d843c920cfbfc40e826d9b0';

abstract class _$TemplateUsecaseNotifier
    extends $AsyncNotifier<TemplateEntity?> {
  FutureOr<TemplateEntity?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<TemplateEntity?>, TemplateEntity?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<TemplateEntity?>, TemplateEntity?>,
              AsyncValue<TemplateEntity?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
