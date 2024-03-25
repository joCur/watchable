// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_request_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groupJoinRequestRepositoryHash() =>
    r'e0fb5ea055be810f53473ba6c1a85f22ee0d2d28';

/// See also [groupJoinRequestRepository].
@ProviderFor(groupJoinRequestRepository)
final groupJoinRequestRepositoryProvider =
    AutoDisposeProvider<JoinRequestRepository>.internal(
  groupJoinRequestRepository,
  name: r'groupJoinRequestRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$groupJoinRequestRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GroupJoinRequestRepositoryRef
    = AutoDisposeProviderRef<JoinRequestRepository>;
String _$listJoinRequestsByGroupIdHash() =>
    r'96cdc96a4501f922f517e9cb6c1b87fe8c911eaa';

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

/// See also [listJoinRequestsByGroupId].
@ProviderFor(listJoinRequestsByGroupId)
const listJoinRequestsByGroupIdProvider = ListJoinRequestsByGroupIdFamily();

/// See also [listJoinRequestsByGroupId].
class ListJoinRequestsByGroupIdFamily
    extends Family<AsyncValue<List<JoinRequest>>> {
  /// See also [listJoinRequestsByGroupId].
  const ListJoinRequestsByGroupIdFamily();

  /// See also [listJoinRequestsByGroupId].
  ListJoinRequestsByGroupIdProvider call(
    String id,
  ) {
    return ListJoinRequestsByGroupIdProvider(
      id,
    );
  }

  @override
  ListJoinRequestsByGroupIdProvider getProviderOverride(
    covariant ListJoinRequestsByGroupIdProvider provider,
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
  String? get name => r'listJoinRequestsByGroupIdProvider';
}

/// See also [listJoinRequestsByGroupId].
class ListJoinRequestsByGroupIdProvider
    extends AutoDisposeFutureProvider<List<JoinRequest>> {
  /// See also [listJoinRequestsByGroupId].
  ListJoinRequestsByGroupIdProvider(
    String id,
  ) : this._internal(
          (ref) => listJoinRequestsByGroupId(
            ref as ListJoinRequestsByGroupIdRef,
            id,
          ),
          from: listJoinRequestsByGroupIdProvider,
          name: r'listJoinRequestsByGroupIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listJoinRequestsByGroupIdHash,
          dependencies: ListJoinRequestsByGroupIdFamily._dependencies,
          allTransitiveDependencies:
              ListJoinRequestsByGroupIdFamily._allTransitiveDependencies,
          id: id,
        );

  ListJoinRequestsByGroupIdProvider._internal(
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
    FutureOr<List<JoinRequest>> Function(ListJoinRequestsByGroupIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListJoinRequestsByGroupIdProvider._internal(
        (ref) => create(ref as ListJoinRequestsByGroupIdRef),
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
  AutoDisposeFutureProviderElement<List<JoinRequest>> createElement() {
    return _ListJoinRequestsByGroupIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListJoinRequestsByGroupIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ListJoinRequestsByGroupIdRef
    on AutoDisposeFutureProviderRef<List<JoinRequest>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _ListJoinRequestsByGroupIdProviderElement
    extends AutoDisposeFutureProviderElement<List<JoinRequest>>
    with ListJoinRequestsByGroupIdRef {
  _ListJoinRequestsByGroupIdProviderElement(super.provider);

  @override
  String get id => (origin as ListJoinRequestsByGroupIdProvider).id;
}

String _$listCurrentUserJoinRequestsHash() =>
    r'480dfe1b19ecc0805788096f9005e3ac321a2387';

/// See also [listCurrentUserJoinRequests].
@ProviderFor(listCurrentUserJoinRequests)
final listCurrentUserJoinRequestsProvider =
    AutoDisposeFutureProvider<List<JoinRequest>>.internal(
  listCurrentUserJoinRequests,
  name: r'listCurrentUserJoinRequestsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$listCurrentUserJoinRequestsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ListCurrentUserJoinRequestsRef
    = AutoDisposeFutureProviderRef<List<JoinRequest>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
