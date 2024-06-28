// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileRepositoryHash() => r'a418040ab411f107fba532de8de16ac2d7b772cf';

/// See also [profileRepository].
@ProviderFor(profileRepository)
final profileRepositoryProvider =
    AutoDisposeProvider<ProfileRepository>.internal(
  profileRepository,
  name: r'profileRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$profileRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProfileRepositoryRef = AutoDisposeProviderRef<ProfileRepository>;
String _$getCurrentUserProfileHash() =>
    r'0c7edc0a780ebb089e8e38ed3e8eb97ad687c3cb';

/// See also [getCurrentUserProfile].
@ProviderFor(getCurrentUserProfile)
final getCurrentUserProfileProvider =
    AutoDisposeFutureProvider<Profile>.internal(
  getCurrentUserProfile,
  name: r'getCurrentUserProfileProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getCurrentUserProfileHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetCurrentUserProfileRef = AutoDisposeFutureProviderRef<Profile>;
String _$findCurrentUserProfileHash() =>
    r'e312d4bbff3cdbfb6ba831d9cf1ad37b0654ae11';

/// See also [findCurrentUserProfile].
@ProviderFor(findCurrentUserProfile)
final findCurrentUserProfileProvider =
    AutoDisposeFutureProvider<Profile?>.internal(
  findCurrentUserProfile,
  name: r'findCurrentUserProfileProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$findCurrentUserProfileHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FindCurrentUserProfileRef = AutoDisposeFutureProviderRef<Profile?>;
String _$getProfileByIdHash() => r'3d5d09874593e1cbc265ab44d1574ae5035e2f9c';

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

/// See also [getProfileById].
@ProviderFor(getProfileById)
const getProfileByIdProvider = GetProfileByIdFamily();

/// See also [getProfileById].
class GetProfileByIdFamily extends Family<AsyncValue<Profile>> {
  /// See also [getProfileById].
  const GetProfileByIdFamily();

  /// See also [getProfileById].
  GetProfileByIdProvider call(
    String id,
  ) {
    return GetProfileByIdProvider(
      id,
    );
  }

  @override
  GetProfileByIdProvider getProviderOverride(
    covariant GetProfileByIdProvider provider,
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
  String? get name => r'getProfileByIdProvider';
}

/// See also [getProfileById].
class GetProfileByIdProvider extends AutoDisposeFutureProvider<Profile> {
  /// See also [getProfileById].
  GetProfileByIdProvider(
    String id,
  ) : this._internal(
          (ref) => getProfileById(
            ref as GetProfileByIdRef,
            id,
          ),
          from: getProfileByIdProvider,
          name: r'getProfileByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getProfileByIdHash,
          dependencies: GetProfileByIdFamily._dependencies,
          allTransitiveDependencies:
              GetProfileByIdFamily._allTransitiveDependencies,
          id: id,
        );

  GetProfileByIdProvider._internal(
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
    FutureOr<Profile> Function(GetProfileByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetProfileByIdProvider._internal(
        (ref) => create(ref as GetProfileByIdRef),
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
  AutoDisposeFutureProviderElement<Profile> createElement() {
    return _GetProfileByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetProfileByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetProfileByIdRef on AutoDisposeFutureProviderRef<Profile> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetProfileByIdProviderElement
    extends AutoDisposeFutureProviderElement<Profile> with GetProfileByIdRef {
  _GetProfileByIdProviderElement(super.provider);

  @override
  String get id => (origin as GetProfileByIdProvider).id;
}

String _$listProfilesByGroupIdHash() =>
    r'f587395dd7202cab638f2789bafb964a553b783c';

/// See also [listProfilesByGroupId].
@ProviderFor(listProfilesByGroupId)
const listProfilesByGroupIdProvider = ListProfilesByGroupIdFamily();

/// See also [listProfilesByGroupId].
class ListProfilesByGroupIdFamily extends Family<AsyncValue<List<Profile>>> {
  /// See also [listProfilesByGroupId].
  const ListProfilesByGroupIdFamily();

  /// See also [listProfilesByGroupId].
  ListProfilesByGroupIdProvider call(
    String groupId,
  ) {
    return ListProfilesByGroupIdProvider(
      groupId,
    );
  }

  @override
  ListProfilesByGroupIdProvider getProviderOverride(
    covariant ListProfilesByGroupIdProvider provider,
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
  String? get name => r'listProfilesByGroupIdProvider';
}

/// See also [listProfilesByGroupId].
class ListProfilesByGroupIdProvider
    extends AutoDisposeFutureProvider<List<Profile>> {
  /// See also [listProfilesByGroupId].
  ListProfilesByGroupIdProvider(
    String groupId,
  ) : this._internal(
          (ref) => listProfilesByGroupId(
            ref as ListProfilesByGroupIdRef,
            groupId,
          ),
          from: listProfilesByGroupIdProvider,
          name: r'listProfilesByGroupIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listProfilesByGroupIdHash,
          dependencies: ListProfilesByGroupIdFamily._dependencies,
          allTransitiveDependencies:
              ListProfilesByGroupIdFamily._allTransitiveDependencies,
          groupId: groupId,
        );

  ListProfilesByGroupIdProvider._internal(
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
    FutureOr<List<Profile>> Function(ListProfilesByGroupIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListProfilesByGroupIdProvider._internal(
        (ref) => create(ref as ListProfilesByGroupIdRef),
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
  AutoDisposeFutureProviderElement<List<Profile>> createElement() {
    return _ListProfilesByGroupIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListProfilesByGroupIdProvider && other.groupId == groupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ListProfilesByGroupIdRef on AutoDisposeFutureProviderRef<List<Profile>> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _ListProfilesByGroupIdProviderElement
    extends AutoDisposeFutureProviderElement<List<Profile>>
    with ListProfilesByGroupIdRef {
  _ListProfilesByGroupIdProviderElement(super.provider);

  @override
  String get groupId => (origin as ListProfilesByGroupIdProvider).groupId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
