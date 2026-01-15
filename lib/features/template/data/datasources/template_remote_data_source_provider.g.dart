// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_remote_data_source_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(templateRemoteDatasource)
final templateRemoteDatasourceProvider = TemplateRemoteDatasourceProvider._();

final class TemplateRemoteDatasourceProvider
    extends
        $FunctionalProvider<
          TemplateRemoteDatasource,
          TemplateRemoteDatasource,
          TemplateRemoteDatasource
        >
    with $Provider<TemplateRemoteDatasource> {
  TemplateRemoteDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'templateRemoteDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$templateRemoteDatasourceHash();

  @$internal
  @override
  $ProviderElement<TemplateRemoteDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TemplateRemoteDatasource create(Ref ref) {
    return templateRemoteDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TemplateRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TemplateRemoteDatasource>(value),
    );
  }
}

String _$templateRemoteDatasourceHash() =>
    r'039c8a50c750b75ee18f9b979d8e28dbe49fa96e';
