// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_group_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$joinGroupControllerHash() =>
    r'3e94b33bbff58d70c6521cbb5f6067532d83f57d';

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

abstract class _$JoinGroupController
    extends BuildlessAutoDisposeAsyncNotifier<JoinRequest?> {
  late final String groupId;

  FutureOr<JoinRequest?> build(
    String groupId,
  );
}

/// See also [JoinGroupController].
@ProviderFor(JoinGroupController)
const joinGroupControllerProvider = JoinGroupControllerFamily();

/// See also [JoinGroupController].
class JoinGroupControllerFamily extends Family<AsyncValue<JoinRequest?>> {
  /// See also [JoinGroupController].
  const JoinGroupControllerFamily();

  /// See also [JoinGroupController].
  JoinGroupControllerProvider call(
    String groupId,
  ) {
    return JoinGroupControllerProvider(
      groupId,
    );
  }

  @override
  JoinGroupControllerProvider getProviderOverride(
    covariant JoinGroupControllerProvider provider,
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
  String? get name => r'joinGroupControllerProvider';
}

/// See also [JoinGroupController].
class JoinGroupControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<
    JoinGroupController, JoinRequest?> {
  /// See also [JoinGroupController].
  JoinGroupControllerProvider(
    String groupId,
  ) : this._internal(
          () => JoinGroupController()..groupId = groupId,
          from: joinGroupControllerProvider,
          name: r'joinGroupControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$joinGroupControllerHash,
          dependencies: JoinGroupControllerFamily._dependencies,
          allTransitiveDependencies:
              JoinGroupControllerFamily._allTransitiveDependencies,
          groupId: groupId,
        );

  JoinGroupControllerProvider._internal(
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
  FutureOr<JoinRequest?> runNotifierBuild(
    covariant JoinGroupController notifier,
  ) {
    return notifier.build(
      groupId,
    );
  }

  @override
  Override overrideWith(JoinGroupController Function() create) {
    return ProviderOverride(
      origin: this,
      override: JoinGroupControllerProvider._internal(
        () => create()..groupId = groupId,
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
  AutoDisposeAsyncNotifierProviderElement<JoinGroupController, JoinRequest?>
      createElement() {
    return _JoinGroupControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is JoinGroupControllerProvider && other.groupId == groupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin JoinGroupControllerRef
    on AutoDisposeAsyncNotifierProviderRef<JoinRequest?> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _JoinGroupControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<JoinGroupController,
        JoinRequest?> with JoinGroupControllerRef {
  _JoinGroupControllerProviderElement(super.provider);

  @override
  String get groupId => (origin as JoinGroupControllerProvider).groupId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
