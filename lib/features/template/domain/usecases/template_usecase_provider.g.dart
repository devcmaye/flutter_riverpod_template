// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(templateUsecase)
final templateUsecaseProvider = TemplateUsecaseProvider._();

final class TemplateUsecaseProvider
    extends
        $FunctionalProvider<TemplateUsecase, TemplateUsecase, TemplateUsecase>
    with $Provider<TemplateUsecase> {
  TemplateUsecaseProvider._()
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
  String debugGetCreateSourceHash() => _$templateUsecaseHash();

  @$internal
  @override
  $ProviderElement<TemplateUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TemplateUsecase create(Ref ref) {
    return templateUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TemplateUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TemplateUsecase>(value),
    );
  }
}

String _$templateUsecaseHash() => r'c0182cc869386fd8497383c354338f837b8f07cd';
