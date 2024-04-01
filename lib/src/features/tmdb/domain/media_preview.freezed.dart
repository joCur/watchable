// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaPreview _$MediaPreviewFromJson(Map<String, dynamic> json) {
  switch (json['media_type']) {
    case 'movie':
      return MoviePreview.fromJson(json);
    case 'tv':
      return TvPreview.fromJson(json);
    case 'person':
      return PersonPreview.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'media_type', 'MediaPreview',
          'Invalid union type "${json['media_type']}"!');
  }
}

/// @nodoc
mixin _$MediaPreview {
  bool get adult => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool adult,
            int id,
            String overview,
            String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "backdrop_path") String? backdropPath)
        movie,
    required TResult Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)
        tv,
    required TResult Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "profile_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)
        person,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool adult,
            int id,
            String overview,
            String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "backdrop_path") String? backdropPath)?
        movie,
    TResult? Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)?
        tv,
    TResult? Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "profile_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)?
        person,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool adult,
            int id,
            String overview,
            String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "backdrop_path") String? backdropPath)?
        movie,
    TResult Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)?
        tv,
    TResult Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "profile_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)?
        person,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviePreview value) movie,
    required TResult Function(TvPreview value) tv,
    required TResult Function(PersonPreview value) person,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviePreview value)? movie,
    TResult? Function(TvPreview value)? tv,
    TResult? Function(PersonPreview value)? person,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviePreview value)? movie,
    TResult Function(TvPreview value)? tv,
    TResult Function(PersonPreview value)? person,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaPreviewCopyWith<MediaPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaPreviewCopyWith<$Res> {
  factory $MediaPreviewCopyWith(
          MediaPreview value, $Res Function(MediaPreview) then) =
      _$MediaPreviewCopyWithImpl<$Res, MediaPreview>;
  @useResult
  $Res call(
      {bool adult,
      int id,
      String overview,
      String title,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(name: "backdrop_path") String? backdropPath});
}

/// @nodoc
class _$MediaPreviewCopyWithImpl<$Res, $Val extends MediaPreview>
    implements $MediaPreviewCopyWith<$Res> {
  _$MediaPreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? id = null,
    Object? overview = null,
    Object? title = null,
    Object? posterPath = freezed,
    Object? voteAverage = null,
    Object? backdropPath = freezed,
  }) {
    return _then(_value.copyWith(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviePreviewImplCopyWith<$Res>
    implements $MediaPreviewCopyWith<$Res> {
  factory _$$MoviePreviewImplCopyWith(
          _$MoviePreviewImpl value, $Res Function(_$MoviePreviewImpl) then) =
      __$$MoviePreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool adult,
      int id,
      String overview,
      String title,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(name: "backdrop_path") String? backdropPath});
}

/// @nodoc
class __$$MoviePreviewImplCopyWithImpl<$Res>
    extends _$MediaPreviewCopyWithImpl<$Res, _$MoviePreviewImpl>
    implements _$$MoviePreviewImplCopyWith<$Res> {
  __$$MoviePreviewImplCopyWithImpl(
      _$MoviePreviewImpl _value, $Res Function(_$MoviePreviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? id = null,
    Object? overview = null,
    Object? title = null,
    Object? posterPath = freezed,
    Object? voteAverage = null,
    Object? backdropPath = freezed,
  }) {
    return _then(_$MoviePreviewImpl(
      null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoviePreviewImpl implements MoviePreview {
  const _$MoviePreviewImpl(
      this.adult,
      this.id,
      this.overview,
      this.title,
      @JsonKey(name: "poster_path") this.posterPath,
      @JsonKey(name: "vote_average") this.voteAverage,
      @JsonKey(name: "backdrop_path") this.backdropPath,
      {final String? $type})
      : $type = $type ?? 'movie';

  factory _$MoviePreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviePreviewImplFromJson(json);

  @override
  final bool adult;
  @override
  final int id;
  @override
  final String overview;
  @override
  final String title;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "vote_average")
  final double voteAverage;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;

  @JsonKey(name: 'media_type')
  final String $type;

  @override
  String toString() {
    return 'MediaPreview.movie(adult: $adult, id: $id, overview: $overview, title: $title, posterPath: $posterPath, voteAverage: $voteAverage, backdropPath: $backdropPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviePreviewImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, adult, id, overview, title,
      posterPath, voteAverage, backdropPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviePreviewImplCopyWith<_$MoviePreviewImpl> get copyWith =>
      __$$MoviePreviewImplCopyWithImpl<_$MoviePreviewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool adult,
            int id,
            String overview,
            String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "backdrop_path") String? backdropPath)
        movie,
    required TResult Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)
        tv,
    required TResult Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "profile_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)
        person,
  }) {
    return movie(
        adult, id, overview, title, posterPath, voteAverage, backdropPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool adult,
            int id,
            String overview,
            String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "backdrop_path") String? backdropPath)?
        movie,
    TResult? Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)?
        tv,
    TResult? Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "profile_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)?
        person,
  }) {
    return movie?.call(
        adult, id, overview, title, posterPath, voteAverage, backdropPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool adult,
            int id,
            String overview,
            String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "backdrop_path") String? backdropPath)?
        movie,
    TResult Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)?
        tv,
    TResult Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "profile_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)?
        person,
    required TResult orElse(),
  }) {
    if (movie != null) {
      return movie(
          adult, id, overview, title, posterPath, voteAverage, backdropPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviePreview value) movie,
    required TResult Function(TvPreview value) tv,
    required TResult Function(PersonPreview value) person,
  }) {
    return movie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviePreview value)? movie,
    TResult? Function(TvPreview value)? tv,
    TResult? Function(PersonPreview value)? person,
  }) {
    return movie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviePreview value)? movie,
    TResult Function(TvPreview value)? tv,
    TResult Function(PersonPreview value)? person,
    required TResult orElse(),
  }) {
    if (movie != null) {
      return movie(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviePreviewImplToJson(
      this,
    );
  }
}

abstract class MoviePreview implements MediaPreview {
  const factory MoviePreview(
          final bool adult,
          final int id,
          final String overview,
          final String title,
          @JsonKey(name: "poster_path") final String? posterPath,
          @JsonKey(name: "vote_average") final double voteAverage,
          @JsonKey(name: "backdrop_path") final String? backdropPath) =
      _$MoviePreviewImpl;

  factory MoviePreview.fromJson(Map<String, dynamic> json) =
      _$MoviePreviewImpl.fromJson;

  @override
  bool get adult;
  @override
  int get id;
  @override
  String get overview;
  @override
  String get title;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "vote_average")
  double get voteAverage;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @JsonKey(ignore: true)
  _$$MoviePreviewImplCopyWith<_$MoviePreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TvPreviewImplCopyWith<$Res>
    implements $MediaPreviewCopyWith<$Res> {
  factory _$$TvPreviewImplCopyWith(
          _$TvPreviewImpl value, $Res Function(_$TvPreviewImpl) then) =
      __$$TvPreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool adult,
      int id,
      @JsonKey(name: "original_name") String overview,
      @JsonKey(name: "name") String title,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "popularity") double voteAverage});
}

/// @nodoc
class __$$TvPreviewImplCopyWithImpl<$Res>
    extends _$MediaPreviewCopyWithImpl<$Res, _$TvPreviewImpl>
    implements _$$TvPreviewImplCopyWith<$Res> {
  __$$TvPreviewImplCopyWithImpl(
      _$TvPreviewImpl _value, $Res Function(_$TvPreviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? id = null,
    Object? overview = null,
    Object? title = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? voteAverage = null,
  }) {
    return _then(_$TvPreviewImpl(
      null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvPreviewImpl implements TvPreview {
  const _$TvPreviewImpl(
      this.adult,
      this.id,
      @JsonKey(name: "original_name") this.overview,
      @JsonKey(name: "name") this.title,
      @JsonKey(name: "poster_path") this.posterPath,
      @JsonKey(name: "backdrop_path") this.backdropPath,
      @JsonKey(name: "popularity") this.voteAverage,
      {final String? $type})
      : $type = $type ?? 'tv';

  factory _$TvPreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvPreviewImplFromJson(json);

  @override
  final bool adult;
  @override
  final int id;
  @override
  @JsonKey(name: "original_name")
  final String overview;
  @override
  @JsonKey(name: "name")
  final String title;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @override
  @JsonKey(name: "popularity")
  final double voteAverage;

  @JsonKey(name: 'media_type')
  final String $type;

  @override
  String toString() {
    return 'MediaPreview.tv(adult: $adult, id: $id, overview: $overview, title: $title, posterPath: $posterPath, backdropPath: $backdropPath, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvPreviewImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, adult, id, overview, title,
      posterPath, backdropPath, voteAverage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvPreviewImplCopyWith<_$TvPreviewImpl> get copyWith =>
      __$$TvPreviewImplCopyWithImpl<_$TvPreviewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool adult,
            int id,
            String overview,
            String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "backdrop_path") String? backdropPath)
        movie,
    required TResult Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)
        tv,
    required TResult Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "profile_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)
        person,
  }) {
    return tv(
        adult, id, overview, title, posterPath, backdropPath, voteAverage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool adult,
            int id,
            String overview,
            String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "backdrop_path") String? backdropPath)?
        movie,
    TResult? Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)?
        tv,
    TResult? Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "profile_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)?
        person,
  }) {
    return tv?.call(
        adult, id, overview, title, posterPath, backdropPath, voteAverage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool adult,
            int id,
            String overview,
            String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "backdrop_path") String? backdropPath)?
        movie,
    TResult Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)?
        tv,
    TResult Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "profile_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)?
        person,
    required TResult orElse(),
  }) {
    if (tv != null) {
      return tv(
          adult, id, overview, title, posterPath, backdropPath, voteAverage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviePreview value) movie,
    required TResult Function(TvPreview value) tv,
    required TResult Function(PersonPreview value) person,
  }) {
    return tv(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviePreview value)? movie,
    TResult? Function(TvPreview value)? tv,
    TResult? Function(PersonPreview value)? person,
  }) {
    return tv?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviePreview value)? movie,
    TResult Function(TvPreview value)? tv,
    TResult Function(PersonPreview value)? person,
    required TResult orElse(),
  }) {
    if (tv != null) {
      return tv(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TvPreviewImplToJson(
      this,
    );
  }
}

abstract class TvPreview implements MediaPreview {
  const factory TvPreview(
      final bool adult,
      final int id,
      @JsonKey(name: "original_name") final String overview,
      @JsonKey(name: "name") final String title,
      @JsonKey(name: "poster_path") final String? posterPath,
      @JsonKey(name: "backdrop_path") final String? backdropPath,
      @JsonKey(name: "popularity") final double voteAverage) = _$TvPreviewImpl;

  factory TvPreview.fromJson(Map<String, dynamic> json) =
      _$TvPreviewImpl.fromJson;

  @override
  bool get adult;
  @override
  int get id;
  @override
  @JsonKey(name: "original_name")
  String get overview;
  @override
  @JsonKey(name: "name")
  String get title;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @JsonKey(name: "popularity")
  double get voteAverage;
  @override
  @JsonKey(ignore: true)
  _$$TvPreviewImplCopyWith<_$TvPreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PersonPreviewImplCopyWith<$Res>
    implements $MediaPreviewCopyWith<$Res> {
  factory _$$PersonPreviewImplCopyWith(
          _$PersonPreviewImpl value, $Res Function(_$PersonPreviewImpl) then) =
      __$$PersonPreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool adult,
      int id,
      @JsonKey(name: "original_name") String overview,
      @JsonKey(name: "name") String title,
      @JsonKey(name: "profile_path") String? posterPath,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "popularity") double voteAverage});
}

/// @nodoc
class __$$PersonPreviewImplCopyWithImpl<$Res>
    extends _$MediaPreviewCopyWithImpl<$Res, _$PersonPreviewImpl>
    implements _$$PersonPreviewImplCopyWith<$Res> {
  __$$PersonPreviewImplCopyWithImpl(
      _$PersonPreviewImpl _value, $Res Function(_$PersonPreviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? id = null,
    Object? overview = null,
    Object? title = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? voteAverage = null,
  }) {
    return _then(_$PersonPreviewImpl(
      null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonPreviewImpl implements PersonPreview {
  const _$PersonPreviewImpl(
      this.adult,
      this.id,
      @JsonKey(name: "original_name") this.overview,
      @JsonKey(name: "name") this.title,
      @JsonKey(name: "profile_path") this.posterPath,
      @JsonKey(name: "backdrop_path") this.backdropPath,
      @JsonKey(name: "popularity") this.voteAverage,
      {final String? $type})
      : $type = $type ?? 'person';

  factory _$PersonPreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonPreviewImplFromJson(json);

  @override
  final bool adult;
  @override
  final int id;
  @override
  @JsonKey(name: "original_name")
  final String overview;
  @override
  @JsonKey(name: "name")
  final String title;
  @override
  @JsonKey(name: "profile_path")
  final String? posterPath;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @override
  @JsonKey(name: "popularity")
  final double voteAverage;

  @JsonKey(name: 'media_type')
  final String $type;

  @override
  String toString() {
    return 'MediaPreview.person(adult: $adult, id: $id, overview: $overview, title: $title, posterPath: $posterPath, backdropPath: $backdropPath, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonPreviewImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, adult, id, overview, title,
      posterPath, backdropPath, voteAverage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonPreviewImplCopyWith<_$PersonPreviewImpl> get copyWith =>
      __$$PersonPreviewImplCopyWithImpl<_$PersonPreviewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool adult,
            int id,
            String overview,
            String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "backdrop_path") String? backdropPath)
        movie,
    required TResult Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)
        tv,
    required TResult Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "profile_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)
        person,
  }) {
    return person(
        adult, id, overview, title, posterPath, backdropPath, voteAverage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool adult,
            int id,
            String overview,
            String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "backdrop_path") String? backdropPath)?
        movie,
    TResult? Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)?
        tv,
    TResult? Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "profile_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)?
        person,
  }) {
    return person?.call(
        adult, id, overview, title, posterPath, backdropPath, voteAverage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool adult,
            int id,
            String overview,
            String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "vote_average") double voteAverage,
            @JsonKey(name: "backdrop_path") String? backdropPath)?
        movie,
    TResult Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "poster_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)?
        tv,
    TResult Function(
            bool adult,
            int id,
            @JsonKey(name: "original_name") String overview,
            @JsonKey(name: "name") String title,
            @JsonKey(name: "profile_path") String? posterPath,
            @JsonKey(name: "backdrop_path") String? backdropPath,
            @JsonKey(name: "popularity") double voteAverage)?
        person,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(
          adult, id, overview, title, posterPath, backdropPath, voteAverage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviePreview value) movie,
    required TResult Function(TvPreview value) tv,
    required TResult Function(PersonPreview value) person,
  }) {
    return person(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviePreview value)? movie,
    TResult? Function(TvPreview value)? tv,
    TResult? Function(PersonPreview value)? person,
  }) {
    return person?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviePreview value)? movie,
    TResult Function(TvPreview value)? tv,
    TResult Function(PersonPreview value)? person,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonPreviewImplToJson(
      this,
    );
  }
}

abstract class PersonPreview implements MediaPreview {
  const factory PersonPreview(
          final bool adult,
          final int id,
          @JsonKey(name: "original_name") final String overview,
          @JsonKey(name: "name") final String title,
          @JsonKey(name: "profile_path") final String? posterPath,
          @JsonKey(name: "backdrop_path") final String? backdropPath,
          @JsonKey(name: "popularity") final double voteAverage) =
      _$PersonPreviewImpl;

  factory PersonPreview.fromJson(Map<String, dynamic> json) =
      _$PersonPreviewImpl.fromJson;

  @override
  bool get adult;
  @override
  int get id;
  @override
  @JsonKey(name: "original_name")
  String get overview;
  @override
  @JsonKey(name: "name")
  String get title;
  @override
  @JsonKey(name: "profile_path")
  String? get posterPath;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @JsonKey(name: "popularity")
  double get voteAverage;
  @override
  @JsonKey(ignore: true)
  _$$PersonPreviewImplCopyWith<_$PersonPreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
