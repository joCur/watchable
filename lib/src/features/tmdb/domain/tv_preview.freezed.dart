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
  int get id => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double get voteAverage => throw _privateConstructorUsedError;
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
      int id,
      String overview,
      @JsonKey(name: "poster_path") String posterPath,
      @JsonKey(name: "vote_average") double voteAverage,
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
    Object? id = null,
    Object? overview = null,
    Object? posterPath = null,
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
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$TvPreviewImplCopyWith<$Res>
    implements $TvPreviewCopyWith<$Res> {
  factory _$$TvPreviewImplCopyWith(
          _$TvPreviewImpl value, $Res Function(_$TvPreviewImpl) then) =
      __$$TvPreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool adult,
      int id,
      String overview,
      @JsonKey(name: "poster_path") String posterPath,
      @JsonKey(name: "vote_average") double voteAverage,
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
    Object? id = null,
    Object? overview = null,
    Object? posterPath = null,
    Object? voteAverage = null,
    Object? backdropPath = freezed,
  }) {
    return _then(_$TvPreviewImpl(
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
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
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
      required this.id,
      required this.overview,
      @JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "vote_average") required this.voteAverage,
      @JsonKey(name: "backdrop_path") this.backdropPath});

  factory _$TvPreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvPreviewImplFromJson(json);

  @override
  final bool adult;
  @override
  final int id;
  @override
  final String overview;
  @override
  @JsonKey(name: "poster_path")
  final String posterPath;
  @override
  @JsonKey(name: "vote_average")
  final double voteAverage;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;

  @override
  String toString() {
    return 'TvPreview(adult: $adult, id: $id, overview: $overview, posterPath: $posterPath, voteAverage: $voteAverage, backdropPath: $backdropPath)';
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
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, adult, id, overview, posterPath, voteAverage, backdropPath);

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

abstract class _TvPreview implements TvPreview, MediaPreview {
  const factory _TvPreview(
          {required final bool adult,
          required final int id,
          required final String overview,
          @JsonKey(name: "poster_path") required final String posterPath,
          @JsonKey(name: "vote_average") required final double voteAverage,
          @JsonKey(name: "backdrop_path") final String? backdropPath}) =
      _$TvPreviewImpl;

  factory _TvPreview.fromJson(Map<String, dynamic> json) =
      _$TvPreviewImpl.fromJson;

  @override
  bool get adult;
  @override
  int get id;
  @override
  String get overview;
  @override
  @JsonKey(name: "poster_path")
  String get posterPath;
  @override
  @JsonKey(name: "vote_average")
  double get voteAverage;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @JsonKey(ignore: true)
  _$$TvPreviewImplCopyWith<_$TvPreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
