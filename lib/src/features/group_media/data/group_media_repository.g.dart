// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_media_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groupMediaRepositoryHash() =>
    r'4ec6da751baf6931289ea9c5ef24b867fecb06cc';

/// See also [groupMediaRepository].
@ProviderFor(groupMediaRepository)
final groupMediaRepositoryProvider =
    AutoDisposeProvider<GroupMediaRepository>.internal(
  groupMediaRepository,
  name: r'groupMediaRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$groupMediaRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GroupMediaRepositoryRef = AutoDisposeProviderRef<GroupMediaRepository>;
String _$watchGroupMediaByGroupIdHash() =>
    r'300d96467af6385b03c7cf35bae8b8ec8f11a2ed';

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

/// See also [watchGroupMediaByGroupId].
@ProviderFor(watchGroupMediaByGroupId)
const watchGroupMediaByGroupIdProvider = WatchGroupMediaByGroupIdFamily();

/// See also [watchGroupMediaByGroupId].
class WatchGroupMediaByGroupIdFamily
    extends Family<AsyncValue<List<GroupMedia>>> {
  /// See also [watchGroupMediaByGroupId].
  const WatchGroupMediaByGroupIdFamily();

  /// See also [watchGroupMediaByGroupId].
  WatchGroupMediaByGroupIdProvider call(
    String groupId,
  ) {
    return WatchGroupMediaByGroupIdProvider(
      groupId,
    );
  }

  @override
  WatchGroupMediaByGroupIdProvider getProviderOverride(
    covariant WatchGroupMediaByGroupIdProvider provider,
  ) {
    return call(
      provider.groupId,
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
  String? get name => r'watchGroupMediaByGroupIdProvider';
}

/// See also [watchGroupMediaByGroupId].
class WatchGroupMediaByGroupIdProvider
    extends AutoDisposeStreamProvider<List<GroupMedia>> {
  /// See also [watchGroupMediaByGroupId].
  WatchGroupMediaByGroupIdProvider(
    String groupId,
  ) : this._internal(
          (ref) => watchGroupMediaByGroupId(
            ref as WatchGroupMediaByGroupIdRef,
            groupId,
          ),
          from: watchGroupMediaByGroupIdProvider,
          name: r'watchGroupMediaByGroupIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$watchGroupMediaByGroupIdHash,
          dependencies: WatchGroupMediaByGroupIdFamily._dependencies,
          allTransitiveDependencies:
              WatchGroupMediaByGroupIdFamily._allTransitiveDependencies,
          groupId: groupId,
        );

  WatchGroupMediaByGroupIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
  }) : super.internal();

  final String groupId;

  @override
  Override overrideWith(
    Stream<List<GroupMedia>> Function(WatchGroupMediaByGroupIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WatchGroupMediaByGroupIdProvider._internal(
        (ref) => create(ref as WatchGroupMediaByGroupIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        groupId: groupId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<GroupMedia>> createElement() {
    return _WatchGroupMediaByGroupIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WatchGroupMediaByGroupIdProvider &&
        other.groupId == groupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WatchGroupMediaByGroupIdRef
    on AutoDisposeStreamProviderRef<List<GroupMedia>> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _WatchGroupMediaByGroupIdProviderElement
    extends AutoDisposeStreamProviderElement<List<GroupMedia>>
    with WatchGroupMediaByGroupIdRef {
  _WatchGroupMediaByGroupIdProviderElement(super.provider);

  @override
  String get groupId => (origin as WatchGroupMediaByGroupIdProvider).groupId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
