// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quantity_picker_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$quantityPickerHash() => r'ecd85b534bcbe3f5cb06f054a5a220c06de9bb92';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$QuantityPicker extends BuildlessAutoDisposeNotifier<int> {
  late final int minQuantity;
  late final int maxQuantity;
  late final int initialQuantity;

  int build({
    required int minQuantity,
    required int maxQuantity,
    required int initialQuantity,
  });
}

/// See also [QuantityPicker].
@ProviderFor(QuantityPicker)
const quantityPickerProvider = QuantityPickerFamily();

/// See also [QuantityPicker].
class QuantityPickerFamily extends Family<int> {
  /// See also [QuantityPicker].
  const QuantityPickerFamily();

  /// See also [QuantityPicker].
  QuantityPickerProvider call({
    required int minQuantity,
    required int maxQuantity,
    required int initialQuantity,
  }) {
    return QuantityPickerProvider(
      minQuantity: minQuantity,
      maxQuantity: maxQuantity,
      initialQuantity: initialQuantity,
    );
  }

  @override
  QuantityPickerProvider getProviderOverride(
    covariant QuantityPickerProvider provider,
  ) {
    return call(
      minQuantity: provider.minQuantity,
      maxQuantity: provider.maxQuantity,
      initialQuantity: provider.initialQuantity,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'quantityPickerProvider';
}

/// See also [QuantityPicker].
class QuantityPickerProvider
    extends AutoDisposeNotifierProviderImpl<QuantityPicker, int> {
  /// See also [QuantityPicker].
  QuantityPickerProvider({
    required int minQuantity,
    required int maxQuantity,
    required int initialQuantity,
  }) : this._internal(
          () => QuantityPicker()
            ..minQuantity = minQuantity
            ..maxQuantity = maxQuantity
            ..initialQuantity = initialQuantity,
          from: quantityPickerProvider,
          name: r'quantityPickerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$quantityPickerHash,
          dependencies: QuantityPickerFamily._dependencies,
          allTransitiveDependencies:
              QuantityPickerFamily._allTransitiveDependencies,
          minQuantity: minQuantity,
          maxQuantity: maxQuantity,
          initialQuantity: initialQuantity,
        );

  QuantityPickerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.minQuantity,
    required this.maxQuantity,
    required this.initialQuantity,
  }) : super.internal();

  final int minQuantity;
  final int maxQuantity;
  final int initialQuantity;

  @override
  int runNotifierBuild(
    covariant QuantityPicker notifier,
  ) {
    return notifier.build(
      minQuantity: minQuantity,
      maxQuantity: maxQuantity,
      initialQuantity: initialQuantity,
    );
  }

  @override
  Override overrideWith(QuantityPicker Function() create) {
    return ProviderOverride(
      origin: this,
      override: QuantityPickerProvider._internal(
        () => create()
          ..minQuantity = minQuantity
          ..maxQuantity = maxQuantity
          ..initialQuantity = initialQuantity,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        minQuantity: minQuantity,
        maxQuantity: maxQuantity,
        initialQuantity: initialQuantity,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<QuantityPicker, int> createElement() {
    return _QuantityPickerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QuantityPickerProvider &&
        other.minQuantity == minQuantity &&
        other.maxQuantity == maxQuantity &&
        other.initialQuantity == initialQuantity;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, minQuantity.hashCode);
    hash = _SystemHash.combine(hash, maxQuantity.hashCode);
    hash = _SystemHash.combine(hash, initialQuantity.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin QuantityPickerRef on AutoDisposeNotifierProviderRef<int> {
  /// The parameter `minQuantity` of this provider.
  int get minQuantity;

  /// The parameter `maxQuantity` of this provider.
  int get maxQuantity;

  /// The parameter `initialQuantity` of this provider.
  int get initialQuantity;
}

class _QuantityPickerProviderElement
    extends AutoDisposeNotifierProviderElement<QuantityPicker, int>
    with QuantityPickerRef {
  _QuantityPickerProviderElement(super.provider);

  @override
  int get minQuantity => (origin as QuantityPickerProvider).minQuantity;
  @override
  int get maxQuantity => (origin as QuantityPickerProvider).maxQuantity;
  @override
  int get initialQuantity => (origin as QuantityPickerProvider).initialQuantity;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
