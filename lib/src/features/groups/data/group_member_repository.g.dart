// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_member_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groupMemberRepositoryHash() =>
    r'd414864493d94b463494a7ca5972e76a2f808cce';

/// See also [groupMemberRepository].
@ProviderFor(groupMemberRepository)
final groupMemberRepositoryProvider =
    AutoDisposeProvider<GroupMemberRepository>.internal(
  groupMemberRepository,
  name: r'groupMemberRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$groupMemberRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GroupMemberRepositoryRef
    = AutoDisposeProviderRef<GroupMemberRepository>;
String _$listGroupMembersByGroupIdHash() =>
    r'ba6a876899e4df1f429a7ef505b999e91c079d74';

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

/// See also [listGroupMembersByGroupId].
@ProviderFor(listGroupMembersByGroupId)
const listGroupMembersByGroupIdProvider = ListGroupMembersByGroupIdFamily();

/// See also [listGroupMembersByGroupId].
class ListGroupMembersByGroupIdFamily
    extends Family<AsyncValue<List<GroupMember>>> {
  /// See also [listGroupMembersByGroupId].
  const ListGroupMembersByGroupIdFamily();

  /// See also [listGroupMembersByGroupId].
  ListGroupMembersByGroupIdProvider call(
    String groupId,
  ) {
    return ListGroupMembersByGroupIdProvider(
      groupId,
    );
  }

  @override
  ListGroupMembersByGroupIdProvider getProviderOverride(
    covariant ListGroupMembersByGroupIdProvider provider,
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
  String? get name => r'listGroupMembersByGroupIdProvider';
}

/// See also [listGroupMembersByGroupId].
class ListGroupMembersByGroupIdProvider
    extends AutoDisposeStreamProvider<List<GroupMember>> {
  /// See also [listGroupMembersByGroupId].
  ListGroupMembersByGroupIdProvider(
    String groupId,
  ) : this._internal(
          (ref) => listGroupMembersByGroupId(
            ref as ListGroupMembersByGroupIdRef,
            groupId,
          ),
          from: listGroupMembersByGroupIdProvider,
          name: r'listGroupMembersByGroupIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listGroupMembersByGroupIdHash,
          dependencies: ListGroupMembersByGroupIdFamily._dependencies,
          allTransitiveDependencies:
              ListGroupMembersByGroupIdFamily._allTransitiveDependencies,
          groupId: groupId,
        );

  ListGroupMembersByGroupIdProvider._internal(
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
    Stream<List<GroupMember>> Function(ListGroupMembersByGroupIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListGroupMembersByGroupIdProvider._internal(
        (ref) => create(ref as ListGroupMembersByGroupIdRef),
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
  AutoDisposeStreamProviderElement<List<GroupMember>> createElement() {
    return _ListGroupMembersByGroupIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListGroupMembersByGroupIdProvider &&
        other.groupId == groupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ListGroupMembersByGroupIdRef
    on AutoDisposeStreamProviderRef<List<GroupMember>> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _ListGroupMembersByGroupIdProviderElement
    extends AutoDisposeStreamProviderElement<List<GroupMember>>
    with ListGroupMembersByGroupIdRef {
  _ListGroupMembersByGroupIdProviderElement(super.provider);

  @override
  String get groupId => (origin as ListGroupMembersByGroupIdProvider).groupId;
}

String _$listGroupMembersByUserIdHash() =>
    r'cf746f759516a5320c73fde2def07e0666dac310';

/// See also [listGroupMembersByUserId].
@ProviderFor(listGroupMembersByUserId)
const listGroupMembersByUserIdProvider = ListGroupMembersByUserIdFamily();

/// See also [listGroupMembersByUserId].
class ListGroupMembersByUserIdFamily
    extends Family<AsyncValue<List<GroupMember>>> {
  /// See also [listGroupMembersByUserId].
  const ListGroupMembersByUserIdFamily();

  /// See also [listGroupMembersByUserId].
  ListGroupMembersByUserIdProvider call(
    String userId,
  ) {
    return ListGroupMembersByUserIdProvider(
      userId,
    );
  }

  @override
  ListGroupMembersByUserIdProvider getProviderOverride(
    covariant ListGroupMembersByUserIdProvider provider,
  ) {
    return call(
      provider.userId,
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
  String? get name => r'listGroupMembersByUserIdProvider';
}

/// See also [listGroupMembersByUserId].
class ListGroupMembersByUserIdProvider
    extends AutoDisposeStreamProvider<List<GroupMember>> {
  /// See also [listGroupMembersByUserId].
  ListGroupMembersByUserIdProvider(
    String userId,
  ) : this._internal(
          (ref) => listGroupMembersByUserId(
            ref as ListGroupMembersByUserIdRef,
            userId,
          ),
          from: listGroupMembersByUserIdProvider,
          name: r'listGroupMembersByUserIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listGroupMembersByUserIdHash,
          dependencies: ListGroupMembersByUserIdFamily._dependencies,
          allTransitiveDependencies:
              ListGroupMembersByUserIdFamily._allTransitiveDependencies,
          userId: userId,
        );

  ListGroupMembersByUserIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(
    Stream<List<GroupMember>> Function(ListGroupMembersByUserIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListGroupMembersByUserIdProvider._internal(
        (ref) => create(ref as ListGroupMembersByUserIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<GroupMember>> createElement() {
    return _ListGroupMembersByUserIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListGroupMembersByUserIdProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ListGroupMembersByUserIdRef
    on AutoDisposeStreamProviderRef<List<GroupMember>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _ListGroupMembersByUserIdProviderElement
    extends AutoDisposeStreamProviderElement<List<GroupMember>>
    with ListGroupMembersByUserIdRef {
  _ListGroupMembersByUserIdProviderElement(super.provider);

  @override
  String get userId => (origin as ListGroupMembersByUserIdProvider).userId;
}

String _$getGroupMemberRoleHash() =>
    r'b26b41311f8d8d8dc2f564757cbeeea2296014ed';

/// See also [getGroupMemberRole].
@ProviderFor(getGroupMemberRole)
const getGroupMemberRoleProvider = GetGroupMemberRoleFamily();

/// See also [getGroupMemberRole].
class GetGroupMemberRoleFamily extends Family<AsyncValue<Role>> {
  /// See also [getGroupMemberRole].
  const GetGroupMemberRoleFamily();

  /// See also [getGroupMemberRole].
  GetGroupMemberRoleProvider call(
    String groupId,
  ) {
    return GetGroupMemberRoleProvider(
      groupId,
    );
  }

  @override
  GetGroupMemberRoleProvider getProviderOverride(
    covariant GetGroupMemberRoleProvider provider,
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
  String? get name => r'getGroupMemberRoleProvider';
}

/// See also [getGroupMemberRole].
class GetGroupMemberRoleProvider extends AutoDisposeFutureProvider<Role> {
  /// See also [getGroupMemberRole].
  GetGroupMemberRoleProvider(
    String groupId,
  ) : this._internal(
          (ref) => getGroupMemberRole(
            ref as GetGroupMemberRoleRef,
            groupId,
          ),
          from: getGroupMemberRoleProvider,
          name: r'getGroupMemberRoleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getGroupMemberRoleHash,
          dependencies: GetGroupMemberRoleFamily._dependencies,
          allTransitiveDependencies:
              GetGroupMemberRoleFamily._allTransitiveDependencies,
          groupId: groupId,
        );

  GetGroupMemberRoleProvider._internal(
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
    FutureOr<Role> Function(GetGroupMemberRoleRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetGroupMemberRoleProvider._internal(
        (ref) => create(ref as GetGroupMemberRoleRef),
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
  AutoDisposeFutureProviderElement<Role> createElement() {
    return _GetGroupMemberRoleProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetGroupMemberRoleProvider && other.groupId == groupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetGroupMemberRoleRef on AutoDisposeFutureProviderRef<Role> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _GetGroupMemberRoleProviderElement
    extends AutoDisposeFutureProviderElement<Role> with GetGroupMemberRoleRef {
  _GetGroupMemberRoleProviderElement(super.provider);

  @override
  String get groupId => (origin as GetGroupMemberRoleProvider).groupId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
