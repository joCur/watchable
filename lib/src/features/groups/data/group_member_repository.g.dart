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
    r'8eacfaa5e501fd2dcc6293517c17ab3031744ada';

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
    extends AutoDisposeFutureProvider<List<GroupMember>> {
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
    FutureOr<List<GroupMember>> Function(ListGroupMembersByGroupIdRef provider)
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
  AutoDisposeFutureProviderElement<List<GroupMember>> createElement() {
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
    on AutoDisposeFutureProviderRef<List<GroupMember>> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _ListGroupMembersByGroupIdProviderElement
    extends AutoDisposeFutureProviderElement<List<GroupMember>>
    with ListGroupMembersByGroupIdRef {
  _ListGroupMembersByGroupIdProviderElement(super.provider);

  @override
  String get groupId => (origin as ListGroupMembersByGroupIdProvider).groupId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
