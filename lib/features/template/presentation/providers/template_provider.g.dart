// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TemplateNotifier)
final templateProvider = TemplateNotifierProvider._();

final class TemplateNotifierProvider
    extends $NotifierProvider<TemplateNotifier, TemplateState> {
  TemplateNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'templateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$templateNotifierHash();

  @$internal
  @override
  TemplateNotifier create() => TemplateNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TemplateState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TemplateState>(value),
    );
  }
}

String _$templateNotifierHash() => r'f3e0139cfae73374858151d33f92391c8ef0e6b6';

abstract class _$TemplateNotifier extends $Notifier<TemplateState> {
  TemplateState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<TemplateState, TemplateState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TemplateState, TemplateState>,
              TemplateState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
