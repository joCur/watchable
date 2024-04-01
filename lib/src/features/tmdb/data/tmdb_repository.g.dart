// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tmdbHash() => r'49714c788017ee02f312277439275be97d8c4a47';

/// See also [tmdb].
@ProviderFor(tmdb)
final tmdbProvider = AutoDisposeProvider<TMDB>.internal(
  tmdb,
  name: r'tmdbProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$tmdbHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TmdbRef = AutoDisposeProviderRef<TMDB>;
String _$getTrendingHash() => r'9befe89599d5539140937696b23be77e989a903c';

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

/// See also [getTrending].
@ProviderFor(getTrending)
const getTrendingProvider = GetTrendingFamily();

/// See also [getTrending].
class GetTrendingFamily extends Family<AsyncValue<Pagination<MediaPreview>>> {
  /// See also [getTrending].
  const GetTrendingFamily();

  /// See also [getTrending].
  GetTrendingProvider call(
    TimeWindow timeWindow,
    int page,
  ) {
    return GetTrendingProvider(
      timeWindow,
      page,
    );
  }

  @override
  GetTrendingProvider getProviderOverride(
    covariant GetTrendingProvider provider,
  ) {
    return call(
      provider.timeWindow,
      provider.page,
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
  String? get name => r'getTrendingProvider';
}

/// See also [getTrending].
class GetTrendingProvider
    extends AutoDisposeFutureProvider<Pagination<MediaPreview>> {
  /// See also [getTrending].
  GetTrendingProvider(
    TimeWindow timeWindow,
    int page,
  ) : this._internal(
          (ref) => getTrending(
            ref as GetTrendingRef,
            timeWindow,
            page,
          ),
          from: getTrendingProvider,
          name: r'getTrendingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getTrendingHash,
          dependencies: GetTrendingFamily._dependencies,
          allTransitiveDependencies:
              GetTrendingFamily._allTransitiveDependencies,
          timeWindow: timeWindow,
          page: page,
        );

  GetTrendingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.timeWindow,
    required this.page,
  }) : super.internal();

  final TimeWindow timeWindow;
  final int page;

  @override
  Override overrideWith(
    FutureOr<Pagination<MediaPreview>> Function(GetTrendingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetTrendingProvider._internal(
        (ref) => create(ref as GetTrendingRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        timeWindow: timeWindow,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Pagination<MediaPreview>> createElement() {
    return _GetTrendingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetTrendingProvider &&
        other.timeWindow == timeWindow &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, timeWindow.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetTrendingRef on AutoDisposeFutureProviderRef<Pagination<MediaPreview>> {
  /// The parameter `timeWindow` of this provider.
  TimeWindow get timeWindow;

  /// The parameter `page` of this provider.
  int get page;
}

class _GetTrendingProviderElement
    extends AutoDisposeFutureProviderElement<Pagination<MediaPreview>>
    with GetTrendingRef {
  _GetTrendingProviderElement(super.provider);

  @override
  TimeWindow get timeWindow => (origin as GetTrendingProvider).timeWindow;
  @override
  int get page => (origin as GetTrendingProvider).page;
}

String _$getMovieByIdHash() => r'2f6f90e0615dc163abd7d31e85f638ed6e7b5d72';

/// See also [getMovieById].
@ProviderFor(getMovieById)
const getMovieByIdProvider = GetMovieByIdFamily();

/// See also [getMovieById].
class GetMovieByIdFamily extends Family<AsyncValue<Media>> {
  /// See also [getMovieById].
  const GetMovieByIdFamily();

  /// See also [getMovieById].
  GetMovieByIdProvider call(
    int id,
  ) {
    return GetMovieByIdProvider(
      id,
    );
  }

  @override
  GetMovieByIdProvider getProviderOverride(
    covariant GetMovieByIdProvider provider,
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
  String? get name => r'getMovieByIdProvider';
}

/// See also [getMovieById].
class GetMovieByIdProvider extends AutoDisposeFutureProvider<Media> {
  /// See also [getMovieById].
  GetMovieByIdProvider(
    int id,
  ) : this._internal(
          (ref) => getMovieById(
            ref as GetMovieByIdRef,
            id,
          ),
          from: getMovieByIdProvider,
          name: r'getMovieByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMovieByIdHash,
          dependencies: GetMovieByIdFamily._dependencies,
          allTransitiveDependencies:
              GetMovieByIdFamily._allTransitiveDependencies,
          id: id,
        );

  GetMovieByIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Media> Function(GetMovieByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMovieByIdProvider._internal(
        (ref) => create(ref as GetMovieByIdRef),
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
  AutoDisposeFutureProviderElement<Media> createElement() {
    return _GetMovieByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMovieByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetMovieByIdRef on AutoDisposeFutureProviderRef<Media> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetMovieByIdProviderElement
    extends AutoDisposeFutureProviderElement<Media> with GetMovieByIdRef {
  _GetMovieByIdProviderElement(super.provider);

  @override
  int get id => (origin as GetMovieByIdProvider).id;
}

String _$getTvByIdHash() => r'ac4eccecdbae5f187ae5d3ff5df7ea0bdc1adb08';

/// See also [getTvById].
@ProviderFor(getTvById)
const getTvByIdProvider = GetTvByIdFamily();

/// See also [getTvById].
class GetTvByIdFamily extends Family<AsyncValue<Media>> {
  /// See also [getTvById].
  const GetTvByIdFamily();

  /// See also [getTvById].
  GetTvByIdProvider call(
    int id,
  ) {
    return GetTvByIdProvider(
      id,
    );
  }

  @override
  GetTvByIdProvider getProviderOverride(
    covariant GetTvByIdProvider provider,
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
  String? get name => r'getTvByIdProvider';
}

/// See also [getTvById].
class GetTvByIdProvider extends AutoDisposeFutureProvider<Media> {
  /// See also [getTvById].
  GetTvByIdProvider(
    int id,
  ) : this._internal(
          (ref) => getTvById(
            ref as GetTvByIdRef,
            id,
          ),
          from: getTvByIdProvider,
          name: r'getTvByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getTvByIdHash,
          dependencies: GetTvByIdFamily._dependencies,
          allTransitiveDependencies: GetTvByIdFamily._allTransitiveDependencies,
          id: id,
        );

  GetTvByIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Media> Function(GetTvByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetTvByIdProvider._internal(
        (ref) => create(ref as GetTvByIdRef),
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
  AutoDisposeFutureProviderElement<Media> createElement() {
    return _GetTvByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetTvByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetTvByIdRef on AutoDisposeFutureProviderRef<Media> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetTvByIdProviderElement extends AutoDisposeFutureProviderElement<Media>
    with GetTvByIdRef {
  _GetTvByIdProviderElement(super.provider);

  @override
  int get id => (origin as GetTvByIdProvider).id;
}

String _$queryMediaHash() => r'245214943ea042856779bc965d282eacf3d5c715';

/// See also [queryMedia].
@ProviderFor(queryMedia)
const queryMediaProvider = QueryMediaFamily();

/// See also [queryMedia].
class QueryMediaFamily extends Family<AsyncValue<Pagination<MediaPreview>>> {
  /// See also [queryMedia].
  const QueryMediaFamily();

  /// See also [queryMedia].
  QueryMediaProvider call(
    String query,
    int page,
  ) {
    return QueryMediaProvider(
      query,
      page,
    );
  }

  @override
  QueryMediaProvider getProviderOverride(
    covariant QueryMediaProvider provider,
  ) {
    return call(
      provider.query,
      provider.page,
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
  String? get name => r'queryMediaProvider';
}

/// See also [queryMedia].
class QueryMediaProvider
    extends AutoDisposeFutureProvider<Pagination<MediaPreview>> {
  /// See also [queryMedia].
  QueryMediaProvider(
    String query,
    int page,
  ) : this._internal(
          (ref) => queryMedia(
            ref as QueryMediaRef,
            query,
            page,
          ),
          from: queryMediaProvider,
          name: r'queryMediaProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$queryMediaHash,
          dependencies: QueryMediaFamily._dependencies,
          allTransitiveDependencies:
              QueryMediaFamily._allTransitiveDependencies,
          query: query,
          page: page,
        );

  QueryMediaProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.page,
  }) : super.internal();

  final String query;
  final int page;

  @override
  Override overrideWith(
    FutureOr<Pagination<MediaPreview>> Function(QueryMediaRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: QueryMediaProvider._internal(
        (ref) => create(ref as QueryMediaRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Pagination<MediaPreview>> createElement() {
    return _QueryMediaProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QueryMediaProvider &&
        other.query == query &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin QueryMediaRef on AutoDisposeFutureProviderRef<Pagination<MediaPreview>> {
  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `page` of this provider.
  int get page;
}

class _QueryMediaProviderElement
    extends AutoDisposeFutureProviderElement<Pagination<MediaPreview>>
    with QueryMediaRef {
  _QueryMediaProviderElement(super.provider);

  @override
  String get query => (origin as QueryMediaProvider).query;
  @override
  int get page => (origin as QueryMediaProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
