// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvPreview _$TvPreviewFromJson(Map<String, dynamic> json) {
  return _TvPreview.fromJson(json);
}

/// @nodoc
mixin _$TvPreview {
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: "genre_ids")
  List<int> get genreIds => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "original_language")
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String get originalTitle => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String get releaseDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get video => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_count")
  int get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvPreviewCopyWith<TvPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvPreviewCopyWith<$Res> {
  factory $TvPreviewCopyWith(TvPreview value, $Res Function(TvPreview) then) =
      _$TvPreviewCopyWithImpl<$Res, TvPreview>;
  @useResult
  $Res call(
      {bool adult,
      @JsonKey(name: "genre_ids") List<int> genreIds,
      int id,
      @JsonKey(name: "original_language") String originalLanguage,
      @JsonKey(name: "original_title") String originalTitle,
      String overview,
      double popularity,
      @JsonKey(name: "poster_path") String posterPath,
      @JsonKey(name: "release_date") String releaseDate,
      String title,
      bool video,
      @JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(name: "vote_count") int voteCount,
      @JsonKey(name: "backdrop_path") String? backdropPath});
}

/// @nodoc
class _$TvPreviewCopyWithImpl<$Res, $Val extends TvPreview>
    implements $TvPreviewCopyWith<$Res> {
  _$TvPreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? genreIds = null,
    Object? id = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = null,
    Object? releaseDate = null,
    Object? title = null,
    Object? video = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? backdropPath = freezed,
  }) {
    return _then(_value.copyWith(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      genreIds: null == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvPreviewImplCopyWith<$Res>
    implements $TvPreviewCopyWith<$Res> {
  factory _$$TvPreviewImplCopyWith(
          _$TvPreviewImpl value, $Res Function(_$TvPreviewImpl) then) =
      __$$TvPreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool adult,
      @JsonKey(name: "genre_ids") List<int> genreIds,
      int id,
      @JsonKey(name: "original_language") String originalLanguage,
      @JsonKey(name: "original_title") String originalTitle,
      String overview,
      double popularity,
      @JsonKey(name: "poster_path") String posterPath,
      @JsonKey(name: "release_date") String releaseDate,
      String title,
      bool video,
      @JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(name: "vote_count") int voteCount,
      @JsonKey(name: "backdrop_path") String? backdropPath});
}

/// @nodoc
class __$$TvPreviewImplCopyWithImpl<$Res>
    extends _$TvPreviewCopyWithImpl<$Res, _$TvPreviewImpl>
    implements _$$TvPreviewImplCopyWith<$Res> {
  __$$TvPreviewImplCopyWithImpl(
      _$TvPreviewImpl _value, $Res Function(_$TvPreviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? genreIds = null,
    Object? id = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = null,
    Object? releaseDate = null,
    Object? title = null,
    Object? video = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? backdropPath = freezed,
  }) {
    return _then(_$TvPreviewImpl(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      genreIds: null == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvPreviewImpl implements _TvPreview {
  const _$TvPreviewImpl(
      {required this.adult,
      @JsonKey(name: "genre_ids") required final List<int> genreIds,
      required this.id,
      @JsonKey(name: "original_language") required this.originalLanguage,
      @JsonKey(name: "original_title") required this.originalTitle,
      required this.overview,
      required this.popularity,
      @JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "release_date") required this.releaseDate,
      required this.title,
      required this.video,
      @JsonKey(name: "vote_average") required this.voteAverage,
      @JsonKey(name: "vote_count") required this.voteCount,
      @JsonKey(name: "backdrop_path") this.backdropPath})
      : _genreIds = genreIds;

  factory _$TvPreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvPreviewImplFromJson(json);

  @override
  final bool adult;
  final List<int> _genreIds;
  @override
  @JsonKey(name: "genre_ids")
  List<int> get genreIds {
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreIds);
  }

  @override
  final int id;
  @override
  @JsonKey(name: "original_language")
  final String originalLanguage;
  @override
  @JsonKey(name: "original_title")
  final String originalTitle;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  @JsonKey(name: "poster_path")
  final String posterPath;
  @override
  @JsonKey(name: "release_date")
  final String releaseDate;
  @override
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
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;

  @override
  String toString() {
    return 'TvPreview(adult: $adult, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount, backdropPath: $backdropPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvPreviewImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      const DeepCollectionEquality().hash(_genreIds),
      id,
      originalLanguage,
      originalTitle,
      overview,
      popularity,
      posterPath,
      releaseDate,
      title,
      video,
      voteAverage,
      voteCount,
      backdropPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvPreviewImplCopyWith<_$TvPreviewImpl> get copyWith =>
      __$$TvPreviewImplCopyWithImpl<_$TvPreviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvPreviewImplToJson(
      this,
    );
  }
}

abstract class _TvPreview implements TvPreview, Media {
  const factory _TvPreview(
          {required final bool adult,
          @JsonKey(name: "genre_ids") required final List<int> genreIds,
          required final int id,
          @JsonKey(name: "original_language")
          required final String originalLanguage,
          @JsonKey(name: "original_title") required final String originalTitle,
          required final String overview,
          required final double popularity,
          @JsonKey(name: "poster_path") required final String posterPath,
          @JsonKey(name: "release_date") required final String releaseDate,
          required final String title,
          required final bool video,
          @JsonKey(name: "vote_average") required final double voteAverage,
          @JsonKey(name: "vote_count") required final int voteCount,
          @JsonKey(name: "backdrop_path") final String? backdropPath}) =
      _$TvPreviewImpl;

  factory _TvPreview.fromJson(Map<String, dynamic> json) =
      _$TvPreviewImpl.fromJson;

  @override
  bool get adult;
  @override
  @JsonKey(name: "genre_ids")
  List<int> get genreIds;
  @override
  int get id;
  @override
  @JsonKey(name: "original_language")
  String get originalLanguage;
  @override
  @JsonKey(name: "original_title")
  String get originalTitle;
  @override
  String get overview;
  @override
  double get popularity;
  @override
  @JsonKey(name: "poster_path")
  String get posterPath;
  @override
  @JsonKey(name: "release_date")
  String get releaseDate;
  @override
  String get title;
  @override
  bool get video;
  @override
  @JsonKey(name: "vote_average")
  double get voteAverage;
  @override
  @JsonKey(name: "vote_count")
  int get voteCount;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @JsonKey(ignore: true)
  _$$TvPreviewImplCopyWith<_$TvPreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
