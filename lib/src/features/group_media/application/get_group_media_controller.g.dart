// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_group_media_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getGroupMediaItemByIdHash() =>
    r'33e861c980463f71693c06cdd59e5c32edb5c374';

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

/// See also [getGroupMediaItemById].
@ProviderFor(getGroupMediaItemById)
const getGroupMediaItemByIdProvider = GetGroupMediaItemByIdFamily();

/// See also [getGroupMediaItemById].
class GetGroupMediaItemByIdFamily extends Family<AsyncValue<GroupMediaState>> {
  /// See also [getGroupMediaItemById].
  const GetGroupMediaItemByIdFamily();

  /// See also [getGroupMediaItemById].
  GetGroupMediaItemByIdProvider call(
    String id,
  ) {
    return GetGroupMediaItemByIdProvider(
      id,
    );
  }

  @override
  GetGroupMediaItemByIdProvider getProviderOverride(
    covariant GetGroupMediaItemByIdProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'getGroupMediaItemByIdProvider';
}

/// See also [getGroupMediaItemById].
class GetGroupMediaItemByIdProvider
    extends AutoDisposeFutureProvider<GroupMediaState> {
  /// See also [getGroupMediaItemById].
  GetGroupMediaItemByIdProvider(
    String id,
  ) : this._internal(
          (ref) => getGroupMediaItemById(
            ref as GetGroupMediaItemByIdRef,
            id,
          ),
          from: getGroupMediaItemByIdProvider,
          name: r'getGroupMediaItemByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getGroupMediaItemByIdHash,
          dependencies: GetGroupMediaItemByIdFamily._dependencies,
          allTransitiveDependencies:
              GetGroupMediaItemByIdFamily._allTransitiveDependencies,
          id: id,
        );

  GetGroupMediaItemByIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<GroupMediaState> Function(GetGroupMediaItemByIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetGroupMediaItemByIdProvider._internal(
        (ref) => create(ref as GetGroupMediaItemByIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GroupMediaState> createElement() {
    return _GetGroupMediaItemByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetGroupMediaItemByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetGroupMediaItemByIdRef
    on AutoDisposeFutureProviderRef<GroupMediaState> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetGroupMediaItemByIdProviderElement
    extends AutoDisposeFutureProviderElement<GroupMediaState>
    with GetGroupMediaItemByIdRef {
  _GetGroupMediaItemByIdProviderElement(super.provider);

  @override
  String get id => (origin as GetGroupMediaItemByIdProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
