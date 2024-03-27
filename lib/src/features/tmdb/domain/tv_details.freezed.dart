// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvDetails _$TvDetailsFromJson(Map<String, dynamic> json) {
  return _TvDetails.fromJson(json);
}

/// @nodoc
mixin _$TvDetails {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_air_date')
  DateTime get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_air_date')
  DateTime get lastAirDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_episodes')
  int get numberOfEpisodes => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_seasons')
  int get numberOfSeasons => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_name')
  String get originalName => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_country')
  List<String> get originCountry => throw _privateConstructorUsedError;
  @JsonKey(name: 'production_companies')
  List<ProductionCompany> get productionCompanies =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'production_countries')
  List<ProductionCountry> get productionCountries =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'spoken_languages')
  List<Language> get spokenLanguages => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<Genre> get genres => throw _privateConstructorUsedError;
  @JsonKey(name: 'seasons')
  List<Season> get seasons => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_episode_to_air')
  Episode get lastEpisodeToAir => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvDetailsCopyWith<TvDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvDetailsCopyWith<$Res> {
  factory $TvDetailsCopyWith(TvDetails value, $Res Function(TvDetails) then) =
      _$TvDetailsCopyWithImpl<$Res, TvDetails>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "name") String title,
      String overview,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'first_air_date') DateTime releaseDate,
      @JsonKey(name: 'last_air_date') DateTime lastAirDate,
      @JsonKey(name: 'number_of_episodes') int numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') int numberOfSeasons,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount,
      bool adult,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_name') String originalName,
      @JsonKey(name: 'origin_country') List<String> originCountry,
      @JsonKey(name: 'production_companies')
      List<ProductionCompany> productionCompanies,
      @JsonKey(name: 'production_countries')
      List<ProductionCountry> productionCountries,
      @JsonKey(name: 'spoken_languages') List<Language> spokenLanguages,
      String status,
      List<Genre> genres,
      @JsonKey(name: 'seasons') List<Season> seasons,
      @JsonKey(name: 'last_episode_to_air') Episode lastEpisodeToAir});

  $EpisodeCopyWith<$Res> get lastEpisodeToAir;
}

/// @nodoc
class _$TvDetailsCopyWithImpl<$Res, $Val extends TvDetails>
    implements $TvDetailsCopyWith<$Res> {
  _$TvDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = null,
    Object? backdropPath = null,
    Object? releaseDate = null,
    Object? lastAirDate = null,
    Object? numberOfEpisodes = null,
    Object? numberOfSeasons = null,
    Object? posterPath = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? adult = null,
    Object? originalLanguage = null,
    Object? originalName = null,
    Object? originCountry = null,
    Object? productionCompanies = null,
    Object? productionCountries = null,
    Object? spokenLanguages = null,
    Object? status = null,
    Object? genres = null,
    Object? seasons = null,
    Object? lastEpisodeToAir = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastAirDate: null == lastAirDate
          ? _value.lastAirDate
          : lastAirDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      numberOfEpisodes: null == numberOfEpisodes
          ? _value.numberOfEpisodes
          : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfSeasons: null == numberOfSeasons
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      originCountry: null == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as List<String>,
      productionCompanies: null == productionCompanies
          ? _value.productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompany>,
      productionCountries: null == productionCountries
          ? _value.productionCountries
          : productionCountries // ignore: cast_nullable_to_non_nullable
              as List<ProductionCountry>,
      spokenLanguages: null == spokenLanguages
          ? _value.spokenLanguages
          : spokenLanguages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      seasons: null == seasons
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>,
      lastEpisodeToAir: null == lastEpisodeToAir
          ? _value.lastEpisodeToAir
          : lastEpisodeToAir // ignore: cast_nullable_to_non_nullable
              as Episode,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EpisodeCopyWith<$Res> get lastEpisodeToAir {
    return $EpisodeCopyWith<$Res>(_value.lastEpisodeToAir, (value) {
      return _then(_value.copyWith(lastEpisodeToAir: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TvDetailsImplCopyWith<$Res>
    implements $TvDetailsCopyWith<$Res> {
  factory _$$TvDetailsImplCopyWith(
          _$TvDetailsImpl value, $Res Function(_$TvDetailsImpl) then) =
      __$$TvDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "name") String title,
      String overview,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'first_air_date') DateTime releaseDate,
      @JsonKey(name: 'last_air_date') DateTime lastAirDate,
      @JsonKey(name: 'number_of_episodes') int numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') int numberOfSeasons,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount,
      bool adult,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_name') String originalName,
      @JsonKey(name: 'origin_country') List<String> originCountry,
      @JsonKey(name: 'production_companies')
      List<ProductionCompany> productionCompanies,
      @JsonKey(name: 'production_countries')
      List<ProductionCountry> productionCountries,
      @JsonKey(name: 'spoken_languages') List<Language> spokenLanguages,
      String status,
      List<Genre> genres,
      @JsonKey(name: 'seasons') List<Season> seasons,
      @JsonKey(name: 'last_episode_to_air') Episode lastEpisodeToAir});

  @override
  $EpisodeCopyWith<$Res> get lastEpisodeToAir;
}

/// @nodoc
class __$$TvDetailsImplCopyWithImpl<$Res>
    extends _$TvDetailsCopyWithImpl<$Res, _$TvDetailsImpl>
    implements _$$TvDetailsImplCopyWith<$Res> {
  __$$TvDetailsImplCopyWithImpl(
      _$TvDetailsImpl _value, $Res Function(_$TvDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = null,
    Object? backdropPath = null,
    Object? releaseDate = null,
    Object? lastAirDate = null,
    Object? numberOfEpisodes = null,
    Object? numberOfSeasons = null,
    Object? posterPath = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? adult = null,
    Object? originalLanguage = null,
    Object? originalName = null,
    Object? originCountry = null,
    Object? productionCompanies = null,
    Object? productionCountries = null,
    Object? spokenLanguages = null,
    Object? status = null,
    Object? genres = null,
    Object? seasons = null,
    Object? lastEpisodeToAir = null,
  }) {
    return _then(_$TvDetailsImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == lastAirDate
          ? _value.lastAirDate
          : lastAirDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == numberOfEpisodes
          ? _value.numberOfEpisodes
          : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
              as int,
      null == numberOfSeasons
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int,
      null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      null == originCountry
          ? _value._originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == productionCompanies
          ? _value._productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompany>,
      null == productionCountries
          ? _value._productionCountries
          : productionCountries // ignore: cast_nullable_to_non_nullable
              as List<ProductionCountry>,
      null == spokenLanguages
          ? _value._spokenLanguages
          : spokenLanguages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      null == seasons
          ? _value._seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>,
      null == lastEpisodeToAir
          ? _value.lastEpisodeToAir
          : lastEpisodeToAir // ignore: cast_nullable_to_non_nullable
              as Episode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvDetailsImpl implements _TvDetails {
  const _$TvDetailsImpl(
      this.id,
      @JsonKey(name: "name") this.title,
      this.overview,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'first_air_date') this.releaseDate,
      @JsonKey(name: 'last_air_date') this.lastAirDate,
      @JsonKey(name: 'number_of_episodes') this.numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') this.numberOfSeasons,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'vote_count') this.voteCount,
      this.adult,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'original_name') this.originalName,
      @JsonKey(name: 'origin_country') final List<String> originCountry,
      @JsonKey(name: 'production_companies')
      final List<ProductionCompany> productionCompanies,
      @JsonKey(name: 'production_countries')
      final List<ProductionCountry> productionCountries,
      @JsonKey(name: 'spoken_languages') final List<Language> spokenLanguages,
      this.status,
      final List<Genre> genres,
      @JsonKey(name: 'seasons') final List<Season> seasons,
      @JsonKey(name: 'last_episode_to_air') this.lastEpisodeToAir)
      : _originCountry = originCountry,
        _productionCompanies = productionCompanies,
        _productionCountries = productionCountries,
        _spokenLanguages = spokenLanguages,
        _genres = genres,
        _seasons = seasons;

  factory _$TvDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvDetailsImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "name")
  final String title;
  @override
  final String overview;
  @override
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  @override
  @JsonKey(name: 'first_air_date')
  final DateTime releaseDate;
  @override
  @JsonKey(name: 'last_air_date')
  final DateTime lastAirDate;
  @override
  @JsonKey(name: 'number_of_episodes')
  final int numberOfEpisodes;
  @override
  @JsonKey(name: 'number_of_seasons')
  final int numberOfSeasons;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;
  @override
  final bool adult;
  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  @JsonKey(name: 'original_name')
  final String originalName;
  final List<String> _originCountry;
  @override
  @JsonKey(name: 'origin_country')
  List<String> get originCountry {
    if (_originCountry is EqualUnmodifiableListView) return _originCountry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_originCountry);
  }

  final List<ProductionCompany> _productionCompanies;
  @override
  @JsonKey(name: 'production_companies')
  List<ProductionCompany> get productionCompanies {
    if (_productionCompanies is EqualUnmodifiableListView)
      return _productionCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productionCompanies);
  }

  final List<ProductionCountry> _productionCountries;
  @override
  @JsonKey(name: 'production_countries')
  List<ProductionCountry> get productionCountries {
    if (_productionCountries is EqualUnmodifiableListView)
      return _productionCountries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productionCountries);
  }

  final List<Language> _spokenLanguages;
  @override
  @JsonKey(name: 'spoken_languages')
  List<Language> get spokenLanguages {
    if (_spokenLanguages is EqualUnmodifiableListView) return _spokenLanguages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spokenLanguages);
  }

  @override
  final String status;
  final List<Genre> _genres;
  @override
  List<Genre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  final List<Season> _seasons;
  @override
  @JsonKey(name: 'seasons')
  List<Season> get seasons {
    if (_seasons is EqualUnmodifiableListView) return _seasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seasons);
  }

  @override
  @JsonKey(name: 'last_episode_to_air')
  final Episode lastEpisodeToAir;

  @override
  String toString() {
    return 'TvDetails(id: $id, title: $title, overview: $overview, backdropPath: $backdropPath, releaseDate: $releaseDate, lastAirDate: $lastAirDate, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, posterPath: $posterPath, voteAverage: $voteAverage, voteCount: $voteCount, adult: $adult, originalLanguage: $originalLanguage, originalName: $originalName, originCountry: $originCountry, productionCompanies: $productionCompanies, productionCountries: $productionCountries, spokenLanguages: $spokenLanguages, status: $status, genres: $genres, seasons: $seasons, lastEpisodeToAir: $lastEpisodeToAir)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.lastAirDate, lastAirDate) ||
                other.lastAirDate == lastAirDate) &&
            (identical(other.numberOfEpisodes, numberOfEpisodes) ||
                other.numberOfEpisodes == numberOfEpisodes) &&
            (identical(other.numberOfSeasons, numberOfSeasons) ||
                other.numberOfSeasons == numberOfSeasons) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            const DeepCollectionEquality()
                .equals(other._originCountry, _originCountry) &&
            const DeepCollectionEquality()
                .equals(other._productionCompanies, _productionCompanies) &&
            const DeepCollectionEquality()
                .equals(other._productionCountries, _productionCountries) &&
            const DeepCollectionEquality()
                .equals(other._spokenLanguages, _spokenLanguages) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other._seasons, _seasons) &&
            (identical(other.lastEpisodeToAir, lastEpisodeToAir) ||
                other.lastEpisodeToAir == lastEpisodeToAir));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        overview,
        backdropPath,
        releaseDate,
        lastAirDate,
        numberOfEpisodes,
        numberOfSeasons,
        posterPath,
        voteAverage,
        voteCount,
        adult,
        originalLanguage,
        originalName,
        const DeepCollectionEquality().hash(_originCountry),
        const DeepCollectionEquality().hash(_productionCompanies),
        const DeepCollectionEquality().hash(_productionCountries),
        const DeepCollectionEquality().hash(_spokenLanguages),
        status,
        const DeepCollectionEquality().hash(_genres),
        const DeepCollectionEquality().hash(_seasons),
        lastEpisodeToAir
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvDetailsImplCopyWith<_$TvDetailsImpl> get copyWith =>
      __$$TvDetailsImplCopyWithImpl<_$TvDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvDetailsImplToJson(
      this,
    );
  }
}

abstract class _TvDetails implements TvDetails, MediaDetails {
  const factory _TvDetails(
      final int id,
      @JsonKey(name: "name") final String title,
      final String overview,
      @JsonKey(name: 'backdrop_path') final String backdropPath,
      @JsonKey(name: 'first_air_date') final DateTime releaseDate,
      @JsonKey(name: 'last_air_date') final DateTime lastAirDate,
      @JsonKey(name: 'number_of_episodes') final int numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') final int numberOfSeasons,
      @JsonKey(name: 'poster_path') final String posterPath,
      @JsonKey(name: 'vote_average') final double voteAverage,
      @JsonKey(name: 'vote_count') final int voteCount,
      final bool adult,
      @JsonKey(name: 'original_language') final String originalLanguage,
      @JsonKey(name: 'original_name') final String originalName,
      @JsonKey(name: 'origin_country') final List<String> originCountry,
      @JsonKey(name: 'production_companies')
      final List<ProductionCompany> productionCompanies,
      @JsonKey(name: 'production_countries')
      final List<ProductionCountry> productionCountries,
      @JsonKey(name: 'spoken_languages') final List<Language> spokenLanguages,
      final String status,
      final List<Genre> genres,
      @JsonKey(name: 'seasons') final List<Season> seasons,
      @JsonKey(name: 'last_episode_to_air')
      final Episode lastEpisodeToAir) = _$TvDetailsImpl;

  factory _TvDetails.fromJson(Map<String, dynamic> json) =
      _$TvDetailsImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "name")
  String get title;
  @override
  String get overview;
  @override
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @override
  @JsonKey(name: 'first_air_date')
  DateTime get releaseDate;
  @override
  @JsonKey(name: 'last_air_date')
  DateTime get lastAirDate;
  @override
  @JsonKey(name: 'number_of_episodes')
  int get numberOfEpisodes;
  @override
  @JsonKey(name: 'number_of_seasons')
  int get numberOfSeasons;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  bool get adult;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  @JsonKey(name: 'original_name')
  String get originalName;
  @override
  @JsonKey(name: 'origin_country')
  List<String> get originCountry;
  @override
  @JsonKey(name: 'production_companies')
  List<ProductionCompany> get productionCompanies;
  @override
  @JsonKey(name: 'production_countries')
  List<ProductionCountry> get productionCountries;
  @override
  @JsonKey(name: 'spoken_languages')
  List<Language> get spokenLanguages;
  @override
  String get status;
  @override
  List<Genre> get genres;
  @override
  @JsonKey(name: 'seasons')
  List<Season> get seasons;
  @override
  @JsonKey(name: 'last_episode_to_air')
  Episode get lastEpisodeToAir;
  @override
  @JsonKey(ignore: true)
  _$$TvDetailsImplCopyWith<_$TvDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
