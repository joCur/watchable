// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Media _$MediaFromJson(Map<String, dynamic> json) {
  switch (json['media_type']) {
    case 'movie':
      return Movie.fromJson(json);
    case 'tv':
      return Tv.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'media_type', 'Media',
          'Invalid union type "${json['media_type']}"!');
  }
}

/// @nodoc
mixin _$Media {
  int get id => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  List<Genre> get genres => throw _privateConstructorUsedError;
  @JsonKey(name: "original_language")
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String? get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "production_companies")
  List<ProductionCompany> get productionCompanies =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "production_countries")
  List<ProductionCountry> get productionCountries =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "spoken_languages")
  List<Language> get spokenLanguages => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_count")
  int get voteCount => throw _privateConstructorUsedError;
  Videos get videos => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            bool adult,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            int budget,
            List<Genre> genres,
            String? homepage,
            @JsonKey(name: "imdb_id", defaultValue: "") String imdbId,
            @JsonKey(name: "original_language") String? originalLanguage,
            @JsonKey(name: "original_title") String? originalTitle,
            @JsonKey(defaultValue: "") String overview,
            double popularity,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "production_companies")
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: "production_countries")
            List<ProductionCountry> productionCountries,
            @JsonKey(name: "release_date") DateTime? releaseDate,
            int revenue,
            int runtime,
            @JsonKey(name: "spoken_languages") List<Language> spokenLanguages,
            String status,
            String tagline,
            @JsonKey(defaultValue: "") String title,
            bool video,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "vote_count") int voteCount,
            Videos videos)
        movie,
    required TResult Function(
            int id,
            @JsonKey(name: "name", defaultValue: "") String title,
            @JsonKey(defaultValue: "") String overview,
            @JsonKey(name: 'backdrop_path') String? backdropPath,
            @JsonKey(name: 'first_air_date') DateTime? releaseDate,
            @JsonKey(name: 'last_air_date') DateTime? lastAirDate,
            @JsonKey(name: 'number_of_episodes') int numberOfEpisodes,
            @JsonKey(name: 'number_of_seasons') int numberOfSeasons,
            @JsonKey(name: 'poster_path') String? posterPath,
            @JsonKey(name: 'vote_average') double voteAverage,
            @JsonKey(name: 'vote_count') int voteCount,
            bool adult,
            @JsonKey(name: 'original_language') String? originalLanguage,
            @JsonKey(name: 'original_name') String? originalTitle,
            @JsonKey(name: 'origin_country') List<String> originCountry,
            @JsonKey(name: 'production_companies')
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: 'production_countries')
            List<ProductionCountry> productionCountries,
            @JsonKey(name: 'spoken_languages') List<Language> spokenLanguages,
            String? status,
            List<Genre> genres,
            @JsonKey(name: 'seasons') List<Season> seasons,
            @JsonKey(name: 'last_episode_to_air') Episode? lastEpisodeToAir,
            Videos videos)
        tv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            bool adult,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            int budget,
            List<Genre> genres,
            String? homepage,
            @JsonKey(name: "imdb_id", defaultValue: "") String imdbId,
            @JsonKey(name: "original_language") String? originalLanguage,
            @JsonKey(name: "original_title") String? originalTitle,
            @JsonKey(defaultValue: "") String overview,
            double popularity,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "production_companies")
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: "production_countries")
            List<ProductionCountry> productionCountries,
            @JsonKey(name: "release_date") DateTime? releaseDate,
            int revenue,
            int runtime,
            @JsonKey(name: "spoken_languages") List<Language> spokenLanguages,
            String status,
            String tagline,
            @JsonKey(defaultValue: "") String title,
            bool video,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "vote_count") int voteCount,
            Videos videos)?
        movie,
    TResult? Function(
            int id,
            @JsonKey(name: "name", defaultValue: "") String title,
            @JsonKey(defaultValue: "") String overview,
            @JsonKey(name: 'backdrop_path') String? backdropPath,
            @JsonKey(name: 'first_air_date') DateTime? releaseDate,
            @JsonKey(name: 'last_air_date') DateTime? lastAirDate,
            @JsonKey(name: 'number_of_episodes') int numberOfEpisodes,
            @JsonKey(name: 'number_of_seasons') int numberOfSeasons,
            @JsonKey(name: 'poster_path') String? posterPath,
            @JsonKey(name: 'vote_average') double voteAverage,
            @JsonKey(name: 'vote_count') int voteCount,
            bool adult,
            @JsonKey(name: 'original_language') String? originalLanguage,
            @JsonKey(name: 'original_name') String? originalTitle,
            @JsonKey(name: 'origin_country') List<String> originCountry,
            @JsonKey(name: 'production_companies')
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: 'production_countries')
            List<ProductionCountry> productionCountries,
            @JsonKey(name: 'spoken_languages') List<Language> spokenLanguages,
            String? status,
            List<Genre> genres,
            @JsonKey(name: 'seasons') List<Season> seasons,
            @JsonKey(name: 'last_episode_to_air') Episode? lastEpisodeToAir,
            Videos videos)?
        tv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            bool adult,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            int budget,
            List<Genre> genres,
            String? homepage,
            @JsonKey(name: "imdb_id", defaultValue: "") String imdbId,
            @JsonKey(name: "original_language") String? originalLanguage,
            @JsonKey(name: "original_title") String? originalTitle,
            @JsonKey(defaultValue: "") String overview,
            double popularity,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "production_companies")
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: "production_countries")
            List<ProductionCountry> productionCountries,
            @JsonKey(name: "release_date") DateTime? releaseDate,
            int revenue,
            int runtime,
            @JsonKey(name: "spoken_languages") List<Language> spokenLanguages,
            String status,
            String tagline,
            @JsonKey(defaultValue: "") String title,
            bool video,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "vote_count") int voteCount,
            Videos videos)?
        movie,
    TResult Function(
            int id,
            @JsonKey(name: "name", defaultValue: "") String title,
            @JsonKey(defaultValue: "") String overview,
            @JsonKey(name: 'backdrop_path') String? backdropPath,
            @JsonKey(name: 'first_air_date') DateTime? releaseDate,
            @JsonKey(name: 'last_air_date') DateTime? lastAirDate,
            @JsonKey(name: 'number_of_episodes') int numberOfEpisodes,
            @JsonKey(name: 'number_of_seasons') int numberOfSeasons,
            @JsonKey(name: 'poster_path') String? posterPath,
            @JsonKey(name: 'vote_average') double voteAverage,
            @JsonKey(name: 'vote_count') int voteCount,
            bool adult,
            @JsonKey(name: 'original_language') String? originalLanguage,
            @JsonKey(name: 'original_name') String? originalTitle,
            @JsonKey(name: 'origin_country') List<String> originCountry,
            @JsonKey(name: 'production_companies')
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: 'production_countries')
            List<ProductionCountry> productionCountries,
            @JsonKey(name: 'spoken_languages') List<Language> spokenLanguages,
            String? status,
            List<Genre> genres,
            @JsonKey(name: 'seasons') List<Season> seasons,
            @JsonKey(name: 'last_episode_to_air') Episode? lastEpisodeToAir,
            Videos videos)?
        tv,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Movie value) movie,
    required TResult Function(Tv value) tv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Movie value)? movie,
    TResult? Function(Tv value)? tv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Movie value)? movie,
    TResult Function(Tv value)? tv,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call(
      {int id,
      bool adult,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      List<Genre> genres,
      @JsonKey(name: "original_language") String? originalLanguage,
      @JsonKey(name: "original_title") String? originalTitle,
      @JsonKey(defaultValue: "") String overview,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "production_companies")
      List<ProductionCompany> productionCompanies,
      @JsonKey(name: "production_countries")
      List<ProductionCountry> productionCountries,
      @JsonKey(name: "release_date") DateTime? releaseDate,
      @JsonKey(name: "spoken_languages") List<Language> spokenLanguages,
      String status,
      @JsonKey(defaultValue: "") String title,
      @JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(name: "vote_count") int voteCount,
      Videos videos});

  $VideosCopyWith<$Res> get videos;
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adult = null,
    Object? backdropPath = freezed,
    Object? genres = null,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? productionCompanies = null,
    Object? productionCountries = null,
    Object? releaseDate = freezed,
    Object? spokenLanguages = null,
    Object? status = null,
    Object? title = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? videos = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      productionCompanies: null == productionCompanies
          ? _value.productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompany>,
      productionCountries: null == productionCountries
          ? _value.productionCountries
          : productionCountries // ignore: cast_nullable_to_non_nullable
              as List<ProductionCountry>,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      spokenLanguages: null == spokenLanguages
          ? _value.spokenLanguages
          : spokenLanguages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      status: null == status
          ? _value.status!
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Videos,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideosCopyWith<$Res> get videos {
    return $VideosCopyWith<$Res>(_value.videos, (value) {
      return _then(_value.copyWith(videos: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieImplCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$MovieImplCopyWith(
          _$MovieImpl value, $Res Function(_$MovieImpl) then) =
      __$$MovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool adult,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      int budget,
      List<Genre> genres,
      String? homepage,
      @JsonKey(name: "imdb_id", defaultValue: "") String imdbId,
      @JsonKey(name: "original_language") String? originalLanguage,
      @JsonKey(name: "original_title") String? originalTitle,
      @JsonKey(defaultValue: "") String overview,
      double popularity,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "production_companies")
      List<ProductionCompany> productionCompanies,
      @JsonKey(name: "production_countries")
      List<ProductionCountry> productionCountries,
      @JsonKey(name: "release_date") DateTime? releaseDate,
      int revenue,
      int runtime,
      @JsonKey(name: "spoken_languages") List<Language> spokenLanguages,
      String status,
      String tagline,
      @JsonKey(defaultValue: "") String title,
      bool video,
      @JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(name: "vote_count") int voteCount,
      Videos videos});

  @override
  $VideosCopyWith<$Res> get videos;
}

/// @nodoc
class __$$MovieImplCopyWithImpl<$Res>
    extends _$MediaCopyWithImpl<$Res, _$MovieImpl>
    implements _$$MovieImplCopyWith<$Res> {
  __$$MovieImplCopyWithImpl(
      _$MovieImpl _value, $Res Function(_$MovieImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adult = null,
    Object? backdropPath = freezed,
    Object? budget = null,
    Object? genres = null,
    Object? homepage = freezed,
    Object? imdbId = null,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = freezed,
    Object? productionCompanies = null,
    Object? productionCountries = null,
    Object? releaseDate = freezed,
    Object? revenue = null,
    Object? runtime = null,
    Object? spokenLanguages = null,
    Object? status = null,
    Object? tagline = null,
    Object? title = null,
    Object? video = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? videos = null,
  }) {
    return _then(_$MovieImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      null == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      null == productionCompanies
          ? _value._productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompany>,
      null == productionCountries
          ? _value._productionCountries
          : productionCountries // ignore: cast_nullable_to_non_nullable
              as List<ProductionCountry>,
      freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int,
      null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      null == spokenLanguages
          ? _value._spokenLanguages
          : spokenLanguages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      null == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Videos,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieImpl implements Movie {
  const _$MovieImpl(
      this.id,
      this.adult,
      @JsonKey(name: "backdrop_path") this.backdropPath,
      this.budget,
      final List<Genre> genres,
      this.homepage,
      @JsonKey(name: "imdb_id", defaultValue: "") this.imdbId,
      @JsonKey(name: "original_language") this.originalLanguage,
      @JsonKey(name: "original_title") this.originalTitle,
      @JsonKey(defaultValue: "") this.overview,
      this.popularity,
      @JsonKey(name: "poster_path") this.posterPath,
      @JsonKey(name: "production_companies")
      final List<ProductionCompany> productionCompanies,
      @JsonKey(name: "production_countries")
      final List<ProductionCountry> productionCountries,
      @JsonKey(name: "release_date") this.releaseDate,
      this.revenue,
      this.runtime,
      @JsonKey(name: "spoken_languages") final List<Language> spokenLanguages,
      this.status,
      this.tagline,
      @JsonKey(defaultValue: "") this.title,
      this.video,
      @JsonKey(name: "vote_average") this.voteAverage,
      @JsonKey(name: "vote_count") this.voteCount,
      this.videos,
      {final String? $type})
      : _genres = genres,
        _productionCompanies = productionCompanies,
        _productionCountries = productionCountries,
        _spokenLanguages = spokenLanguages,
        $type = $type ?? 'movie';

  factory _$MovieImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieImplFromJson(json);

  @override
  final int id;
  @override
  final bool adult;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @override
  final int budget;
  final List<Genre> _genres;
  @override
  List<Genre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final String? homepage;
  @override
  @JsonKey(name: "imdb_id", defaultValue: "")
  final String imdbId;
  @override
  @JsonKey(name: "original_language")
  final String? originalLanguage;
  @override
  @JsonKey(name: "original_title")
  final String? originalTitle;
  @override
  @JsonKey(defaultValue: "")
  final String overview;
  @override
  final double popularity;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  final List<ProductionCompany> _productionCompanies;
  @override
  @JsonKey(name: "production_companies")
  List<ProductionCompany> get productionCompanies {
    if (_productionCompanies is EqualUnmodifiableListView)
      return _productionCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productionCompanies);
  }

  final List<ProductionCountry> _productionCountries;
  @override
  @JsonKey(name: "production_countries")
  List<ProductionCountry> get productionCountries {
    if (_productionCountries is EqualUnmodifiableListView)
      return _productionCountries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productionCountries);
  }

  @override
  @JsonKey(name: "release_date")
  final DateTime? releaseDate;
  @override
  final int revenue;
  @override
  final int runtime;
  final List<Language> _spokenLanguages;
  @override
  @JsonKey(name: "spoken_languages")
  List<Language> get spokenLanguages {
    if (_spokenLanguages is EqualUnmodifiableListView) return _spokenLanguages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spokenLanguages);
  }

  @override
  final String status;
  @override
  final String tagline;
  @override
  @JsonKey(defaultValue: "")
  final String title;
  @override
  final bool video;
  @override
  @JsonKey(name: "vote_average")
  final double voteAverage;
  @override
  @JsonKey(name: "vote_count")
  final int voteCount;
  @override
  final Videos videos;

  @JsonKey(name: 'media_type')
  final String $type;

  @override
  String toString() {
    return 'Media.movie(id: $id, adult: $adult, backdropPath: $backdropPath, budget: $budget, genres: $genres, homepage: $homepage, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCompanies: $productionCompanies, productionCountries: $productionCountries, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, spokenLanguages: $spokenLanguages, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount, videos: $videos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            const DeepCollectionEquality()
                .equals(other._productionCompanies, _productionCompanies) &&
            const DeepCollectionEquality()
                .equals(other._productionCountries, _productionCountries) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            const DeepCollectionEquality()
                .equals(other._spokenLanguages, _spokenLanguages) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.videos, videos) || other.videos == videos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        adult,
        backdropPath,
        budget,
        const DeepCollectionEquality().hash(_genres),
        homepage,
        imdbId,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        const DeepCollectionEquality().hash(_productionCompanies),
        const DeepCollectionEquality().hash(_productionCountries),
        releaseDate,
        revenue,
        runtime,
        const DeepCollectionEquality().hash(_spokenLanguages),
        status,
        tagline,
        title,
        video,
        voteAverage,
        voteCount,
        videos
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      __$$MovieImplCopyWithImpl<_$MovieImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            bool adult,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            int budget,
            List<Genre> genres,
            String? homepage,
            @JsonKey(name: "imdb_id", defaultValue: "") String imdbId,
            @JsonKey(name: "original_language") String? originalLanguage,
            @JsonKey(name: "original_title") String? originalTitle,
            @JsonKey(defaultValue: "") String overview,
            double popularity,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "production_companies")
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: "production_countries")
            List<ProductionCountry> productionCountries,
            @JsonKey(name: "release_date") DateTime? releaseDate,
            int revenue,
            int runtime,
            @JsonKey(name: "spoken_languages") List<Language> spokenLanguages,
            String status,
            String tagline,
            @JsonKey(defaultValue: "") String title,
            bool video,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "vote_count") int voteCount,
            Videos videos)
        movie,
    required TResult Function(
            int id,
            @JsonKey(name: "name", defaultValue: "") String title,
            @JsonKey(defaultValue: "") String overview,
            @JsonKey(name: 'backdrop_path') String? backdropPath,
            @JsonKey(name: 'first_air_date') DateTime? releaseDate,
            @JsonKey(name: 'last_air_date') DateTime? lastAirDate,
            @JsonKey(name: 'number_of_episodes') int numberOfEpisodes,
            @JsonKey(name: 'number_of_seasons') int numberOfSeasons,
            @JsonKey(name: 'poster_path') String? posterPath,
            @JsonKey(name: 'vote_average') double voteAverage,
            @JsonKey(name: 'vote_count') int voteCount,
            bool adult,
            @JsonKey(name: 'original_language') String? originalLanguage,
            @JsonKey(name: 'original_name') String? originalTitle,
            @JsonKey(name: 'origin_country') List<String> originCountry,
            @JsonKey(name: 'production_companies')
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: 'production_countries')
            List<ProductionCountry> productionCountries,
            @JsonKey(name: 'spoken_languages') List<Language> spokenLanguages,
            String? status,
            List<Genre> genres,
            @JsonKey(name: 'seasons') List<Season> seasons,
            @JsonKey(name: 'last_episode_to_air') Episode? lastEpisodeToAir,
            Videos videos)
        tv,
  }) {
    return movie(
        id,
        adult,
        backdropPath,
        budget,
        genres,
        homepage,
        imdbId,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        productionCompanies,
        productionCountries,
        releaseDate,
        revenue,
        runtime,
        spokenLanguages,
        status,
        tagline,
        title,
        video,
        voteAverage,
        voteCount,
        videos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            bool adult,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            int budget,
            List<Genre> genres,
            String? homepage,
            @JsonKey(name: "imdb_id", defaultValue: "") String imdbId,
            @JsonKey(name: "original_language") String? originalLanguage,
            @JsonKey(name: "original_title") String? originalTitle,
            @JsonKey(defaultValue: "") String overview,
            double popularity,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "production_companies")
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: "production_countries")
            List<ProductionCountry> productionCountries,
            @JsonKey(name: "release_date") DateTime? releaseDate,
            int revenue,
            int runtime,
            @JsonKey(name: "spoken_languages") List<Language> spokenLanguages,
            String status,
            String tagline,
            @JsonKey(defaultValue: "") String title,
            bool video,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "vote_count") int voteCount,
            Videos videos)?
        movie,
    TResult? Function(
            int id,
            @JsonKey(name: "name", defaultValue: "") String title,
            @JsonKey(defaultValue: "") String overview,
            @JsonKey(name: 'backdrop_path') String? backdropPath,
            @JsonKey(name: 'first_air_date') DateTime? releaseDate,
            @JsonKey(name: 'last_air_date') DateTime? lastAirDate,
            @JsonKey(name: 'number_of_episodes') int numberOfEpisodes,
            @JsonKey(name: 'number_of_seasons') int numberOfSeasons,
            @JsonKey(name: 'poster_path') String? posterPath,
            @JsonKey(name: 'vote_average') double voteAverage,
            @JsonKey(name: 'vote_count') int voteCount,
            bool adult,
            @JsonKey(name: 'original_language') String? originalLanguage,
            @JsonKey(name: 'original_name') String? originalTitle,
            @JsonKey(name: 'origin_country') List<String> originCountry,
            @JsonKey(name: 'production_companies')
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: 'production_countries')
            List<ProductionCountry> productionCountries,
            @JsonKey(name: 'spoken_languages') List<Language> spokenLanguages,
            String? status,
            List<Genre> genres,
            @JsonKey(name: 'seasons') List<Season> seasons,
            @JsonKey(name: 'last_episode_to_air') Episode? lastEpisodeToAir,
            Videos videos)?
        tv,
  }) {
    return movie?.call(
        id,
        adult,
        backdropPath,
        budget,
        genres,
        homepage,
        imdbId,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        productionCompanies,
        productionCountries,
        releaseDate,
        revenue,
        runtime,
        spokenLanguages,
        status,
        tagline,
        title,
        video,
        voteAverage,
        voteCount,
        videos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            bool adult,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            int budget,
            List<Genre> genres,
            String? homepage,
            @JsonKey(name: "imdb_id", defaultValue: "") String imdbId,
            @JsonKey(name: "original_language") String? originalLanguage,
            @JsonKey(name: "original_title") String? originalTitle,
            @JsonKey(defaultValue: "") String overview,
            double popularity,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "production_companies")
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: "production_countries")
            List<ProductionCountry> productionCountries,
            @JsonKey(name: "release_date") DateTime? releaseDate,
            int revenue,
            int runtime,
            @JsonKey(name: "spoken_languages") List<Language> spokenLanguages,
            String status,
            String tagline,
            @JsonKey(defaultValue: "") String title,
            bool video,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "vote_count") int voteCount,
            Videos videos)?
        movie,
    TResult Function(
            int id,
            @JsonKey(name: "name", defaultValue: "") String title,
            @JsonKey(defaultValue: "") String overview,
            @JsonKey(name: 'backdrop_path') String? backdropPath,
            @JsonKey(name: 'first_air_date') DateTime? releaseDate,
            @JsonKey(name: 'last_air_date') DateTime? lastAirDate,
            @JsonKey(name: 'number_of_episodes') int numberOfEpisodes,
            @JsonKey(name: 'number_of_seasons') int numberOfSeasons,
            @JsonKey(name: 'poster_path') String? posterPath,
            @JsonKey(name: 'vote_average') double voteAverage,
            @JsonKey(name: 'vote_count') int voteCount,
            bool adult,
            @JsonKey(name: 'original_language') String? originalLanguage,
            @JsonKey(name: 'original_name') String? originalTitle,
            @JsonKey(name: 'origin_country') List<String> originCountry,
            @JsonKey(name: 'production_companies')
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: 'production_countries')
            List<ProductionCountry> productionCountries,
            @JsonKey(name: 'spoken_languages') List<Language> spokenLanguages,
            String? status,
            List<Genre> genres,
            @JsonKey(name: 'seasons') List<Season> seasons,
            @JsonKey(name: 'last_episode_to_air') Episode? lastEpisodeToAir,
            Videos videos)?
        tv,
    required TResult orElse(),
  }) {
    if (movie != null) {
      return movie(
          id,
          adult,
          backdropPath,
          budget,
          genres,
          homepage,
          imdbId,
          originalLanguage,
          originalTitle,
          overview,
          popularity,
          posterPath,
          productionCompanies,
          productionCountries,
          releaseDate,
          revenue,
          runtime,
          spokenLanguages,
          status,
          tagline,
          title,
          video,
          voteAverage,
          voteCount,
          videos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Movie value) movie,
    required TResult Function(Tv value) tv,
  }) {
    return movie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Movie value)? movie,
    TResult? Function(Tv value)? tv,
  }) {
    return movie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Movie value)? movie,
    TResult Function(Tv value)? tv,
    required TResult orElse(),
  }) {
    if (movie != null) {
      return movie(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieImplToJson(
      this,
    );
  }
}

abstract class Movie implements Media {
  const factory Movie(
      final int id,
      final bool adult,
      @JsonKey(name: "backdrop_path") final String? backdropPath,
      final int budget,
      final List<Genre> genres,
      final String? homepage,
      @JsonKey(name: "imdb_id", defaultValue: "") final String imdbId,
      @JsonKey(name: "original_language") final String? originalLanguage,
      @JsonKey(name: "original_title") final String? originalTitle,
      @JsonKey(defaultValue: "") final String overview,
      final double popularity,
      @JsonKey(name: "poster_path") final String? posterPath,
      @JsonKey(name: "production_companies")
      final List<ProductionCompany> productionCompanies,
      @JsonKey(name: "production_countries")
      final List<ProductionCountry> productionCountries,
      @JsonKey(name: "release_date") final DateTime? releaseDate,
      final int revenue,
      final int runtime,
      @JsonKey(name: "spoken_languages") final List<Language> spokenLanguages,
      final String status,
      final String tagline,
      @JsonKey(defaultValue: "") final String title,
      final bool video,
      @JsonKey(name: "vote_average") final double voteAverage,
      @JsonKey(name: "vote_count") final int voteCount,
      final Videos videos) = _$MovieImpl;

  factory Movie.fromJson(Map<String, dynamic> json) = _$MovieImpl.fromJson;

  @override
  int get id;
  @override
  bool get adult;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  int get budget;
  @override
  List<Genre> get genres;
  String? get homepage;
  @JsonKey(name: "imdb_id", defaultValue: "")
  String get imdbId;
  @override
  @JsonKey(name: "original_language")
  String? get originalLanguage;
  @override
  @JsonKey(name: "original_title")
  String? get originalTitle;
  @override
  @JsonKey(defaultValue: "")
  String get overview;
  double get popularity;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "production_companies")
  List<ProductionCompany> get productionCompanies;
  @override
  @JsonKey(name: "production_countries")
  List<ProductionCountry> get productionCountries;
  @override
  @JsonKey(name: "release_date")
  DateTime? get releaseDate;
  int get revenue;
  int get runtime;
  @override
  @JsonKey(name: "spoken_languages")
  List<Language> get spokenLanguages;
  @override
  String get status;
  String get tagline;
  @override
  @JsonKey(defaultValue: "")
  String get title;
  bool get video;
  @override
  @JsonKey(name: "vote_average")
  double get voteAverage;
  @override
  @JsonKey(name: "vote_count")
  int get voteCount;
  @override
  Videos get videos;
  @override
  @JsonKey(ignore: true)
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TvImplCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$TvImplCopyWith(_$TvImpl value, $Res Function(_$TvImpl) then) =
      __$$TvImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "name", defaultValue: "") String title,
      @JsonKey(defaultValue: "") String overview,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'first_air_date') DateTime? releaseDate,
      @JsonKey(name: 'last_air_date') DateTime? lastAirDate,
      @JsonKey(name: 'number_of_episodes') int numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') int numberOfSeasons,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount,
      bool adult,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_name') String? originalTitle,
      @JsonKey(name: 'origin_country') List<String> originCountry,
      @JsonKey(name: 'production_companies')
      List<ProductionCompany> productionCompanies,
      @JsonKey(name: 'production_countries')
      List<ProductionCountry> productionCountries,
      @JsonKey(name: 'spoken_languages') List<Language> spokenLanguages,
      String? status,
      List<Genre> genres,
      @JsonKey(name: 'seasons') List<Season> seasons,
      @JsonKey(name: 'last_episode_to_air') Episode? lastEpisodeToAir,
      Videos videos});

  $EpisodeCopyWith<$Res>? get lastEpisodeToAir;
  @override
  $VideosCopyWith<$Res> get videos;
}

/// @nodoc
class __$$TvImplCopyWithImpl<$Res> extends _$MediaCopyWithImpl<$Res, _$TvImpl>
    implements _$$TvImplCopyWith<$Res> {
  __$$TvImplCopyWithImpl(_$TvImpl _value, $Res Function(_$TvImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = null,
    Object? backdropPath = freezed,
    Object? releaseDate = freezed,
    Object? lastAirDate = freezed,
    Object? numberOfEpisodes = null,
    Object? numberOfSeasons = null,
    Object? posterPath = freezed,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? adult = null,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? originCountry = null,
    Object? productionCompanies = null,
    Object? productionCountries = null,
    Object? spokenLanguages = null,
    Object? status = freezed,
    Object? genres = null,
    Object? seasons = null,
    Object? lastEpisodeToAir = freezed,
    Object? videos = null,
  }) {
    return _then(_$TvImpl(
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
      freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == lastAirDate
          ? _value.lastAirDate
          : lastAirDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      null == numberOfEpisodes
          ? _value.numberOfEpisodes
          : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
              as int,
      null == numberOfSeasons
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
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
      freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
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
      freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      null == seasons
          ? _value._seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>,
      freezed == lastEpisodeToAir
          ? _value.lastEpisodeToAir
          : lastEpisodeToAir // ignore: cast_nullable_to_non_nullable
              as Episode?,
      null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Videos,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EpisodeCopyWith<$Res>? get lastEpisodeToAir {
    if (_value.lastEpisodeToAir == null) {
      return null;
    }

    return $EpisodeCopyWith<$Res>(_value.lastEpisodeToAir!, (value) {
      return _then(_value.copyWith(lastEpisodeToAir: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TvImpl implements Tv {
  const _$TvImpl(
      this.id,
      @JsonKey(name: "name", defaultValue: "") this.title,
      @JsonKey(defaultValue: "") this.overview,
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
      @JsonKey(name: 'original_name') this.originalTitle,
      @JsonKey(name: 'origin_country') final List<String> originCountry,
      @JsonKey(name: 'production_companies')
      final List<ProductionCompany> productionCompanies,
      @JsonKey(name: 'production_countries')
      final List<ProductionCountry> productionCountries,
      @JsonKey(name: 'spoken_languages') final List<Language> spokenLanguages,
      this.status,
      final List<Genre> genres,
      @JsonKey(name: 'seasons') final List<Season> seasons,
      @JsonKey(name: 'last_episode_to_air') this.lastEpisodeToAir,
      this.videos,
      {final String? $type})
      : _originCountry = originCountry,
        _productionCompanies = productionCompanies,
        _productionCountries = productionCountries,
        _spokenLanguages = spokenLanguages,
        _genres = genres,
        _seasons = seasons,
        $type = $type ?? 'tv';

  factory _$TvImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "name", defaultValue: "")
  final String title;
  @override
  @JsonKey(defaultValue: "")
  final String overview;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'first_air_date')
  final DateTime? releaseDate;
  @override
  @JsonKey(name: 'last_air_date')
  final DateTime? lastAirDate;
  @override
  @JsonKey(name: 'number_of_episodes')
  final int numberOfEpisodes;
  @override
  @JsonKey(name: 'number_of_seasons')
  final int numberOfSeasons;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
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
  final String? originalLanguage;
  @override
  @JsonKey(name: 'original_name')
  final String? originalTitle;
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
  final String? status;
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
  final Episode? lastEpisodeToAir;
  @override
  final Videos videos;

  @JsonKey(name: 'media_type')
  final String $type;

  @override
  String toString() {
    return 'Media.tv(id: $id, title: $title, overview: $overview, backdropPath: $backdropPath, releaseDate: $releaseDate, lastAirDate: $lastAirDate, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, posterPath: $posterPath, voteAverage: $voteAverage, voteCount: $voteCount, adult: $adult, originalLanguage: $originalLanguage, originalTitle: $originalTitle, originCountry: $originCountry, productionCompanies: $productionCompanies, productionCountries: $productionCountries, spokenLanguages: $spokenLanguages, status: $status, genres: $genres, seasons: $seasons, lastEpisodeToAir: $lastEpisodeToAir, videos: $videos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvImpl &&
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
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
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
                other.lastEpisodeToAir == lastEpisodeToAir) &&
            (identical(other.videos, videos) || other.videos == videos));
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
        originalTitle,
        const DeepCollectionEquality().hash(_originCountry),
        const DeepCollectionEquality().hash(_productionCompanies),
        const DeepCollectionEquality().hash(_productionCountries),
        const DeepCollectionEquality().hash(_spokenLanguages),
        status,
        const DeepCollectionEquality().hash(_genres),
        const DeepCollectionEquality().hash(_seasons),
        lastEpisodeToAir,
        videos
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvImplCopyWith<_$TvImpl> get copyWith =>
      __$$TvImplCopyWithImpl<_$TvImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            bool adult,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            int budget,
            List<Genre> genres,
            String? homepage,
            @JsonKey(name: "imdb_id", defaultValue: "") String imdbId,
            @JsonKey(name: "original_language") String? originalLanguage,
            @JsonKey(name: "original_title") String? originalTitle,
            @JsonKey(defaultValue: "") String overview,
            double popularity,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "production_companies")
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: "production_countries")
            List<ProductionCountry> productionCountries,
            @JsonKey(name: "release_date") DateTime? releaseDate,
            int revenue,
            int runtime,
            @JsonKey(name: "spoken_languages") List<Language> spokenLanguages,
            String status,
            String tagline,
            @JsonKey(defaultValue: "") String title,
            bool video,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "vote_count") int voteCount,
            Videos videos)
        movie,
    required TResult Function(
            int id,
            @JsonKey(name: "name", defaultValue: "") String title,
            @JsonKey(defaultValue: "") String overview,
            @JsonKey(name: 'backdrop_path') String? backdropPath,
            @JsonKey(name: 'first_air_date') DateTime? releaseDate,
            @JsonKey(name: 'last_air_date') DateTime? lastAirDate,
            @JsonKey(name: 'number_of_episodes') int numberOfEpisodes,
            @JsonKey(name: 'number_of_seasons') int numberOfSeasons,
            @JsonKey(name: 'poster_path') String? posterPath,
            @JsonKey(name: 'vote_average') double voteAverage,
            @JsonKey(name: 'vote_count') int voteCount,
            bool adult,
            @JsonKey(name: 'original_language') String? originalLanguage,
            @JsonKey(name: 'original_name') String? originalTitle,
            @JsonKey(name: 'origin_country') List<String> originCountry,
            @JsonKey(name: 'production_companies')
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: 'production_countries')
            List<ProductionCountry> productionCountries,
            @JsonKey(name: 'spoken_languages') List<Language> spokenLanguages,
            String? status,
            List<Genre> genres,
            @JsonKey(name: 'seasons') List<Season> seasons,
            @JsonKey(name: 'last_episode_to_air') Episode? lastEpisodeToAir,
            Videos videos)
        tv,
  }) {
    return tv(
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
        originalTitle,
        originCountry,
        productionCompanies,
        productionCountries,
        spokenLanguages,
        status,
        genres,
        seasons,
        lastEpisodeToAir,
        videos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            bool adult,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            int budget,
            List<Genre> genres,
            String? homepage,
            @JsonKey(name: "imdb_id", defaultValue: "") String imdbId,
            @JsonKey(name: "original_language") String? originalLanguage,
            @JsonKey(name: "original_title") String? originalTitle,
            @JsonKey(defaultValue: "") String overview,
            double popularity,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "production_companies")
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: "production_countries")
            List<ProductionCountry> productionCountries,
            @JsonKey(name: "release_date") DateTime? releaseDate,
            int revenue,
            int runtime,
            @JsonKey(name: "spoken_languages") List<Language> spokenLanguages,
            String status,
            String tagline,
            @JsonKey(defaultValue: "") String title,
            bool video,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "vote_count") int voteCount,
            Videos videos)?
        movie,
    TResult? Function(
            int id,
            @JsonKey(name: "name", defaultValue: "") String title,
            @JsonKey(defaultValue: "") String overview,
            @JsonKey(name: 'backdrop_path') String? backdropPath,
            @JsonKey(name: 'first_air_date') DateTime? releaseDate,
            @JsonKey(name: 'last_air_date') DateTime? lastAirDate,
            @JsonKey(name: 'number_of_episodes') int numberOfEpisodes,
            @JsonKey(name: 'number_of_seasons') int numberOfSeasons,
            @JsonKey(name: 'poster_path') String? posterPath,
            @JsonKey(name: 'vote_average') double voteAverage,
            @JsonKey(name: 'vote_count') int voteCount,
            bool adult,
            @JsonKey(name: 'original_language') String? originalLanguage,
            @JsonKey(name: 'original_name') String? originalTitle,
            @JsonKey(name: 'origin_country') List<String> originCountry,
            @JsonKey(name: 'production_companies')
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: 'production_countries')
            List<ProductionCountry> productionCountries,
            @JsonKey(name: 'spoken_languages') List<Language> spokenLanguages,
            String? status,
            List<Genre> genres,
            @JsonKey(name: 'seasons') List<Season> seasons,
            @JsonKey(name: 'last_episode_to_air') Episode? lastEpisodeToAir,
            Videos videos)?
        tv,
  }) {
    return tv?.call(
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
        originalTitle,
        originCountry,
        productionCompanies,
        productionCountries,
        spokenLanguages,
        status,
        genres,
        seasons,
        lastEpisodeToAir,
        videos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            bool adult,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            int budget,
            List<Genre> genres,
            String? homepage,
            @JsonKey(name: "imdb_id", defaultValue: "") String imdbId,
            @JsonKey(name: "original_language") String? originalLanguage,
            @JsonKey(name: "original_title") String? originalTitle,
            @JsonKey(defaultValue: "") String overview,
            double popularity,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "production_companies")
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: "production_countries")
            List<ProductionCountry> productionCountries,
            @JsonKey(name: "release_date") DateTime? releaseDate,
            int revenue,
            int runtime,
            @JsonKey(name: "spoken_languages") List<Language> spokenLanguages,
            String status,
            String tagline,
            @JsonKey(defaultValue: "") String title,
            bool video,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "vote_count") int voteCount,
            Videos videos)?
        movie,
    TResult Function(
            int id,
            @JsonKey(name: "name", defaultValue: "") String title,
            @JsonKey(defaultValue: "") String overview,
            @JsonKey(name: 'backdrop_path') String? backdropPath,
            @JsonKey(name: 'first_air_date') DateTime? releaseDate,
            @JsonKey(name: 'last_air_date') DateTime? lastAirDate,
            @JsonKey(name: 'number_of_episodes') int numberOfEpisodes,
            @JsonKey(name: 'number_of_seasons') int numberOfSeasons,
            @JsonKey(name: 'poster_path') String? posterPath,
            @JsonKey(name: 'vote_average') double voteAverage,
            @JsonKey(name: 'vote_count') int voteCount,
            bool adult,
            @JsonKey(name: 'original_language') String? originalLanguage,
            @JsonKey(name: 'original_name') String? originalTitle,
            @JsonKey(name: 'origin_country') List<String> originCountry,
            @JsonKey(name: 'production_companies')
            List<ProductionCompany> productionCompanies,
            @JsonKey(name: 'production_countries')
            List<ProductionCountry> productionCountries,
            @JsonKey(name: 'spoken_languages') List<Language> spokenLanguages,
            String? status,
            List<Genre> genres,
            @JsonKey(name: 'seasons') List<Season> seasons,
            @JsonKey(name: 'last_episode_to_air') Episode? lastEpisodeToAir,
            Videos videos)?
        tv,
    required TResult orElse(),
  }) {
    if (tv != null) {
      return tv(
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
          originalTitle,
          originCountry,
          productionCompanies,
          productionCountries,
          spokenLanguages,
          status,
          genres,
          seasons,
          lastEpisodeToAir,
          videos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Movie value) movie,
    required TResult Function(Tv value) tv,
  }) {
    return tv(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Movie value)? movie,
    TResult? Function(Tv value)? tv,
  }) {
    return tv?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Movie value)? movie,
    TResult Function(Tv value)? tv,
    required TResult orElse(),
  }) {
    if (tv != null) {
      return tv(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TvImplToJson(
      this,
    );
  }
}

abstract class Tv implements Media {
  const factory Tv(
      final int id,
      @JsonKey(name: "name", defaultValue: "") final String title,
      @JsonKey(defaultValue: "") final String overview,
      @JsonKey(name: 'backdrop_path') final String? backdropPath,
      @JsonKey(name: 'first_air_date') final DateTime? releaseDate,
      @JsonKey(name: 'last_air_date') final DateTime? lastAirDate,
      @JsonKey(name: 'number_of_episodes') final int numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') final int numberOfSeasons,
      @JsonKey(name: 'poster_path') final String? posterPath,
      @JsonKey(name: 'vote_average') final double voteAverage,
      @JsonKey(name: 'vote_count') final int voteCount,
      final bool adult,
      @JsonKey(name: 'original_language') final String? originalLanguage,
      @JsonKey(name: 'original_name') final String? originalTitle,
      @JsonKey(name: 'origin_country') final List<String> originCountry,
      @JsonKey(name: 'production_companies')
      final List<ProductionCompany> productionCompanies,
      @JsonKey(name: 'production_countries')
      final List<ProductionCountry> productionCountries,
      @JsonKey(name: 'spoken_languages') final List<Language> spokenLanguages,
      final String? status,
      final List<Genre> genres,
      @JsonKey(name: 'seasons') final List<Season> seasons,
      @JsonKey(name: 'last_episode_to_air') final Episode? lastEpisodeToAir,
      final Videos videos) = _$TvImpl;

  factory Tv.fromJson(Map<String, dynamic> json) = _$TvImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "name", defaultValue: "")
  String get title;
  @override
  @JsonKey(defaultValue: "")
  String get overview;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'first_air_date')
  DateTime? get releaseDate;
  @JsonKey(name: 'last_air_date')
  DateTime? get lastAirDate;
  @JsonKey(name: 'number_of_episodes')
  int get numberOfEpisodes;
  @JsonKey(name: 'number_of_seasons')
  int get numberOfSeasons;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
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
  String? get originalLanguage;
  @override
  @JsonKey(name: 'original_name')
  String? get originalTitle;
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
  String? get status;
  @override
  List<Genre> get genres;
  @JsonKey(name: 'seasons')
  List<Season> get seasons;
  @JsonKey(name: 'last_episode_to_air')
  Episode? get lastEpisodeToAir;
  @override
  Videos get videos;
  @override
  @JsonKey(ignore: true)
  _$$TvImplCopyWith<_$TvImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
