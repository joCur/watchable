// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersonPreview _$PersonPreviewFromJson(Map<String, dynamic> json) {
  return _PersonPreview.fromJson(json);
}

/// @nodoc
mixin _$PersonPreview {
  bool get adult => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "original_name")
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "popularity")
  double get voteAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonPreviewCopyWith<PersonPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonPreviewCopyWith<$Res> {
  factory $PersonPreviewCopyWith(
          PersonPreview value, $Res Function(PersonPreview) then) =
      _$PersonPreviewCopyWithImpl<$Res, PersonPreview>;
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
class _$PersonPreviewCopyWithImpl<$Res, $Val extends PersonPreview>
    implements $PersonPreviewCopyWith<$Res> {
  _$PersonPreviewCopyWithImpl(this._value, this._then);

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
    Object? backdropPath = freezed,
    Object? voteAverage = null,
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
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonPreviewImplCopyWith<$Res>
    implements $PersonPreviewCopyWith<$Res> {
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
    extends _$PersonPreviewCopyWithImpl<$Res, _$PersonPreviewImpl>
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
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonPreviewImpl implements _PersonPreview {
  const _$PersonPreviewImpl(
      {required this.adult,
      required this.id,
      @JsonKey(name: "original_name") required this.overview,
      @JsonKey(name: "name") required this.title,
      @JsonKey(name: "profile_path") this.posterPath,
      @JsonKey(name: "backdrop_path") this.backdropPath,
      @JsonKey(name: "popularity") required this.voteAverage});

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

  @override
  String toString() {
    return 'PersonPreview(adult: $adult, id: $id, overview: $overview, title: $title, posterPath: $posterPath, backdropPath: $backdropPath, voteAverage: $voteAverage)';
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
  Map<String, dynamic> toJson() {
    return _$$PersonPreviewImplToJson(
      this,
    );
  }
}

abstract class _PersonPreview implements PersonPreview, MediaPreview {
  const factory _PersonPreview(
          {required final bool adult,
          required final int id,
          @JsonKey(name: "original_name") required final String overview,
          @JsonKey(name: "name") required final String title,
          @JsonKey(name: "profile_path") final String? posterPath,
          @JsonKey(name: "backdrop_path") final String? backdropPath,
          @JsonKey(name: "popularity") required final double voteAverage}) =
      _$PersonPreviewImpl;

  factory _PersonPreview.fromJson(Map<String, dynamic> json) =
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
