// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_request_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$joinRequestControllerHash() =>
    r'e933cfa838276adcc6c1bc77034bf19cfa4b2e57';

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

abstract class _$JoinRequestController
    extends BuildlessAutoDisposeAsyncNotifier<void> {
  late final JoinRequest request;

  FutureOr<void> build(
    JoinRequest request,
  );
}

/// See also [JoinRequestController].
@ProviderFor(JoinRequestController)
const joinRequestControllerProvider = JoinRequestControllerFamily();

/// See also [JoinRequestController].
class JoinRequestControllerFamily extends Family<AsyncValue<void>> {
  /// See also [JoinRequestController].
  const JoinRequestControllerFamily();

  /// See also [JoinRequestController].
  JoinRequestControllerProvider call(
    JoinRequest request,
  ) {
    return JoinRequestControllerProvider(
      request,
    );
  }

  @override
  JoinRequestControllerProvider getProviderOverride(
    covariant JoinRequestControllerProvider provider,
  ) {
    return call(
      provider.request,
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
  String? get name => r'joinRequestControllerProvider';
}

/// See also [JoinRequestController].
class JoinRequestControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<JoinRequestController, void> {
  /// See also [JoinRequestController].
  JoinRequestControllerProvider(
    JoinRequest request,
  ) : this._internal(
          () => JoinRequestController()..request = request,
          from: joinRequestControllerProvider,
          name: r'joinRequestControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$joinRequestControllerHash,
          dependencies: JoinRequestControllerFamily._dependencies,
          allTransitiveDependencies:
              JoinRequestControllerFamily._allTransitiveDependencies,
          request: request,
        );

  JoinRequestControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final JoinRequest request;

  @override
  FutureOr<void> runNotifierBuild(
    covariant JoinRequestController notifier,
  ) {
    return notifier.build(
      request,
    );
  }

  @override
  Override overrideWith(JoinRequestController Function() create) {
    return ProviderOverride(
      origin: this,
      override: JoinRequestControllerProvider._internal(
        () => create()..request = request,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<JoinRequestController, void>
      createElement() {
    return _JoinRequestControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is JoinRequestControllerProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin JoinRequestControllerRef on AutoDisposeAsyncNotifierProviderRef<void> {
  /// The parameter `request` of this provider.
  JoinRequest get request;
}

class _JoinRequestControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<JoinRequestController, void>
    with JoinRequestControllerRef {
  _JoinRequestControllerProviderElement(super.provider);

  @override
  JoinRequest get request => (origin as JoinRequestControllerProvider).request;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
