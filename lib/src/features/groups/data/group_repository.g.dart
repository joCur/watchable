// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groupRepositoryHash() => r'bf89d04afc9d50fcdfdf3038118e1133413496eb';

/// See also [groupRepository].
@ProviderFor(groupRepository)
final groupRepositoryProvider = AutoDisposeProvider<GroupRepository>.internal(
  groupRepository,
  name: r'groupRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$groupRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GroupRepositoryRef = AutoDisposeProviderRef<GroupRepository>;
String _$listGroupsHash() => r'8efcb721cbeffe8ae7b51bc967886a6aa97d735e';

/// See also [listGroups].
@ProviderFor(listGroups)
final listGroupsProvider = AutoDisposeFutureProvider<List<Group>>.internal(
  listGroups,
  name: r'listGroupsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$listGroupsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ListGroupsRef = AutoDisposeFutureProviderRef<List<Group>>;
String _$listOtherGroupsForCurrentUserHash() =>
    r'13c1249f06a198a02446b245d2030fc514381ee5';

/// See also [listOtherGroupsForCurrentUser].
@ProviderFor(listOtherGroupsForCurrentUser)
final listOtherGroupsForCurrentUserProvider =
    AutoDisposeFutureProvider<List<Group>>.internal(
  listOtherGroupsForCurrentUser,
  name: r'listOtherGroupsForCurrentUserProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$listOtherGroupsForCurrentUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ListOtherGroupsForCurrentUserRef
    = AutoDisposeFutureProviderRef<List<Group>>;
String _$listCurrentUserGroupsHash() =>
    r'a541af71759e8d693fb52103645953317d03c930';

/// See also [listCurrentUserGroups].
@ProviderFor(listCurrentUserGroups)
final listCurrentUserGroupsProvider =
    AutoDisposeStreamProvider<List<Group>>.internal(
  listCurrentUserGroups,
  name: r'listCurrentUserGroupsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$listCurrentUserGroupsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ListCurrentUserGroupsRef = AutoDisposeStreamProviderRef<List<Group>>;
String _$getGroupByIdHash() => r'37858905b0e4a13b06a5cfb86256d672a13575ac';

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

/// See also [getGroupById].
@ProviderFor(getGroupById)
const getGroupByIdProvider = GetGroupByIdFamily();

/// See also [getGroupById].
class GetGroupByIdFamily extends Family<AsyncValue<Group>> {
  /// See also [getGroupById].
  const GetGroupByIdFamily();

  /// See also [getGroupById].
  GetGroupByIdProvider call(
    String id,
  ) {
    return GetGroupByIdProvider(
      id,
    );
  }

  @override
  GetGroupByIdProvider getProviderOverride(
    covariant GetGroupByIdProvider provider,
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
  String? get name => r'getGroupByIdProvider';
}

/// See also [getGroupById].
class GetGroupByIdProvider extends AutoDisposeFutureProvider<Group> {
  /// See also [getGroupById].
  GetGroupByIdProvider(
    String id,
  ) : this._internal(
          (ref) => getGroupById(
            ref as GetGroupByIdRef,
            id,
          ),
          from: getGroupByIdProvider,
          name: r'getGroupByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getGroupByIdHash,
          dependencies: GetGroupByIdFamily._dependencies,
          allTransitiveDependencies:
              GetGroupByIdFamily._allTransitiveDependencies,
          id: id,
        );

  GetGroupByIdProvider._internal(
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
    FutureOr<Group> Function(GetGroupByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetGroupByIdProvider._internal(
        (ref) => create(ref as GetGroupByIdRef),
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
  AutoDisposeFutureProviderElement<Group> createElement() {
    return _GetGroupByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetGroupByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetGroupByIdRef on AutoDisposeFutureProviderRef<Group> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetGroupByIdProviderElement
    extends AutoDisposeFutureProviderElement<Group> with GetGroupByIdRef {
  _GetGroupByIdProviderElement(super.provider);

  @override
  String get id => (origin as GetGroupByIdProvider).id;
}

String _$getCurrentUserGroupByIdHash() =>
    r'9372926018f5a94848f6e13bb5840709fd373e3e';

/// See also [getCurrentUserGroupById].
@ProviderFor(getCurrentUserGroupById)
const getCurrentUserGroupByIdProvider = GetCurrentUserGroupByIdFamily();

/// See also [getCurrentUserGroupById].
class GetCurrentUserGroupByIdFamily extends Family<Group> {
  /// See also [getCurrentUserGroupById].
  const GetCurrentUserGroupByIdFamily();

  /// See also [getCurrentUserGroupById].
  GetCurrentUserGroupByIdProvider call(
    String id,
  ) {
    return GetCurrentUserGroupByIdProvider(
      id,
    );
  }

  @override
  GetCurrentUserGroupByIdProvider getProviderOverride(
    covariant GetCurrentUserGroupByIdProvider provider,
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
  String? get name => r'getCurrentUserGroupByIdProvider';
}

/// See also [getCurrentUserGroupById].
class GetCurrentUserGroupByIdProvider extends AutoDisposeProvider<Group> {
  /// See also [getCurrentUserGroupById].
  GetCurrentUserGroupByIdProvider(
    String id,
  ) : this._internal(
          (ref) => getCurrentUserGroupById(
            ref as GetCurrentUserGroupByIdRef,
            id,
          ),
          from: getCurrentUserGroupByIdProvider,
          name: r'getCurrentUserGroupByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCurrentUserGroupByIdHash,
          dependencies: GetCurrentUserGroupByIdFamily._dependencies,
          allTransitiveDependencies:
              GetCurrentUserGroupByIdFamily._allTransitiveDependencies,
          id: id,
        );

  GetCurrentUserGroupByIdProvider._internal(
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
    Group Function(GetCurrentUserGroupByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetCurrentUserGroupByIdProvider._internal(
        (ref) => create(ref as GetCurrentUserGroupByIdRef),
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
  AutoDisposeProviderElement<Group> createElement() {
    return _GetCurrentUserGroupByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCurrentUserGroupByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetCurrentUserGroupByIdRef on AutoDisposeProviderRef<Group> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetCurrentUserGroupByIdProviderElement
    extends AutoDisposeProviderElement<Group> with GetCurrentUserGroupByIdRef {
  _GetCurrentUserGroupByIdProviderElement(super.provider);

  @override
  String get id => (origin as GetCurrentUserGroupByIdProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
