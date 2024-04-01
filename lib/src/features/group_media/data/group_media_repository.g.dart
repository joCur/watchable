// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_media_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groupMediaRepositoryHash() =>
    r'0e1b08fa5826f9bcc39b4e9998e55c57394edbc6';

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

String _$findGroupMediaByGroupIdHash() =>
    r'6cc3dce6e9309dca1e8bef2958b20f140d4ed32f';

/// See also [findGroupMediaByGroupId].
@ProviderFor(findGroupMediaByGroupId)
const findGroupMediaByGroupIdProvider = FindGroupMediaByGroupIdFamily();

/// See also [findGroupMediaByGroupId].
class FindGroupMediaByGroupIdFamily extends Family<AsyncValue<GroupMedia?>> {
  /// See also [findGroupMediaByGroupId].
  const FindGroupMediaByGroupIdFamily();

  /// See also [findGroupMediaByGroupId].
  FindGroupMediaByGroupIdProvider call(
    String groupId,
    int tmdbId,
  ) {
    return FindGroupMediaByGroupIdProvider(
      groupId,
      tmdbId,
    );
  }

  @override
  FindGroupMediaByGroupIdProvider getProviderOverride(
    covariant FindGroupMediaByGroupIdProvider provider,
  ) {
    return call(
      provider.groupId,
      provider.tmdbId,
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
  String? get name => r'findGroupMediaByGroupIdProvider';
}

/// See also [findGroupMediaByGroupId].
class FindGroupMediaByGroupIdProvider
    extends AutoDisposeFutureProvider<GroupMedia?> {
  /// See also [findGroupMediaByGroupId].
  FindGroupMediaByGroupIdProvider(
    String groupId,
    int tmdbId,
  ) : this._internal(
          (ref) => findGroupMediaByGroupId(
            ref as FindGroupMediaByGroupIdRef,
            groupId,
            tmdbId,
          ),
          from: findGroupMediaByGroupIdProvider,
          name: r'findGroupMediaByGroupIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$findGroupMediaByGroupIdHash,
          dependencies: FindGroupMediaByGroupIdFamily._dependencies,
          allTransitiveDependencies:
              FindGroupMediaByGroupIdFamily._allTransitiveDependencies,
          groupId: groupId,
          tmdbId: tmdbId,
        );

  FindGroupMediaByGroupIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
    required this.tmdbId,
  }) : super.internal();

  final String groupId;
  final int tmdbId;

  @override
  Override overrideWith(
    FutureOr<GroupMedia?> Function(FindGroupMediaByGroupIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FindGroupMediaByGroupIdProvider._internal(
        (ref) => create(ref as FindGroupMediaByGroupIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        groupId: groupId,
        tmdbId: tmdbId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GroupMedia?> createElement() {
    return _FindGroupMediaByGroupIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FindGroupMediaByGroupIdProvider &&
        other.groupId == groupId &&
        other.tmdbId == tmdbId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);
    hash = _SystemHash.combine(hash, tmdbId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FindGroupMediaByGroupIdRef on AutoDisposeFutureProviderRef<GroupMedia?> {
  /// The parameter `groupId` of this provider.
  String get groupId;

  /// The parameter `tmdbId` of this provider.
  int get tmdbId;
}

class _FindGroupMediaByGroupIdProviderElement
    extends AutoDisposeFutureProviderElement<GroupMedia?>
    with FindGroupMediaByGroupIdRef {
  _FindGroupMediaByGroupIdProviderElement(super.provider);

  @override
  String get groupId => (origin as FindGroupMediaByGroupIdProvider).groupId;
  @override
  int get tmdbId => (origin as FindGroupMediaByGroupIdProvider).tmdbId;
}

String _$listGroupsWithMediaStateHash() =>
    r'6fd47b7322e37d7f14e9c9f8f8a9efea9f7d6b80';

/// See also [listGroupsWithMediaState].
@ProviderFor(listGroupsWithMediaState)
const listGroupsWithMediaStateProvider = ListGroupsWithMediaStateFamily();

/// See also [listGroupsWithMediaState].
class ListGroupsWithMediaStateFamily
    extends Family<AsyncValue<List<Tuple2<Group, bool>>>> {
  /// See also [listGroupsWithMediaState].
  const ListGroupsWithMediaStateFamily();

  /// See also [listGroupsWithMediaState].
  ListGroupsWithMediaStateProvider call(
    int tmdbId,
  ) {
    return ListGroupsWithMediaStateProvider(
      tmdbId,
    );
  }

  @override
  ListGroupsWithMediaStateProvider getProviderOverride(
    covariant ListGroupsWithMediaStateProvider provider,
  ) {
    return call(
      provider.tmdbId,
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
  String? get name => r'listGroupsWithMediaStateProvider';
}

/// See also [listGroupsWithMediaState].
class ListGroupsWithMediaStateProvider
    extends AutoDisposeFutureProvider<List<Tuple2<Group, bool>>> {
  /// See also [listGroupsWithMediaState].
  ListGroupsWithMediaStateProvider(
    int tmdbId,
  ) : this._internal(
          (ref) => listGroupsWithMediaState(
            ref as ListGroupsWithMediaStateRef,
            tmdbId,
          ),
          from: listGroupsWithMediaStateProvider,
          name: r'listGroupsWithMediaStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listGroupsWithMediaStateHash,
          dependencies: ListGroupsWithMediaStateFamily._dependencies,
          allTransitiveDependencies:
              ListGroupsWithMediaStateFamily._allTransitiveDependencies,
          tmdbId: tmdbId,
        );

  ListGroupsWithMediaStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tmdbId,
  }) : super.internal();

  final int tmdbId;

  @override
  Override overrideWith(
    FutureOr<List<Tuple2<Group, bool>>> Function(
            ListGroupsWithMediaStateRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListGroupsWithMediaStateProvider._internal(
        (ref) => create(ref as ListGroupsWithMediaStateRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tmdbId: tmdbId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Tuple2<Group, bool>>> createElement() {
    return _ListGroupsWithMediaStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListGroupsWithMediaStateProvider && other.tmdbId == tmdbId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tmdbId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ListGroupsWithMediaStateRef
    on AutoDisposeFutureProviderRef<List<Tuple2<Group, bool>>> {
  /// The parameter `tmdbId` of this provider.
  int get tmdbId;
}

class _ListGroupsWithMediaStateProviderElement
    extends AutoDisposeFutureProviderElement<List<Tuple2<Group, bool>>>
    with ListGroupsWithMediaStateRef {
  _ListGroupsWithMediaStateProviderElement(super.provider);

  @override
  int get tmdbId => (origin as ListGroupsWithMediaStateProvider).tmdbId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
