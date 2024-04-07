// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'season.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Season _$SeasonFromJson(Map<String, dynamic> json) {
  return _Season.fromJson(json);
}

/// @nodoc
mixin _$Season {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "season_number")
  int get seasonNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "air_date")
  DateTime? get airDate => throw _privateConstructorUsedError;
  @JsonKey(name: "episode_count")
  int get episodeCount => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double get voteAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonCopyWith<Season> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonCopyWith<$Res> {
  factory $SeasonCopyWith(Season value, $Res Function(Season) then) =
      _$SeasonCopyWithImpl<$Res, Season>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "season_number") int seasonNumber,
      @JsonKey(name: "air_date") DateTime? airDate,
      @JsonKey(name: "episode_count") int episodeCount,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "vote_average") double voteAverage});
}

/// @nodoc
class _$SeasonCopyWithImpl<$Res, $Val extends Season>
    implements $SeasonCopyWith<$Res> {
  _$SeasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? seasonNumber = null,
    Object? airDate = freezed,
    Object? episodeCount = null,
    Object? name = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? voteAverage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      seasonNumber: null == seasonNumber
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int,
      airDate: freezed == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      episodeCount: null == episodeCount
          ? _value.episodeCount
          : episodeCount // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeasonImplCopyWith<$Res> implements $SeasonCopyWith<$Res> {
  factory _$$SeasonImplCopyWith(
          _$SeasonImpl value, $Res Function(_$SeasonImpl) then) =
      __$$SeasonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "season_number") int seasonNumber,
      @JsonKey(name: "air_date") DateTime? airDate,
      @JsonKey(name: "episode_count") int episodeCount,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "vote_average") double voteAverage});
}

/// @nodoc
class __$$SeasonImplCopyWithImpl<$Res>
    extends _$SeasonCopyWithImpl<$Res, _$SeasonImpl>
    implements _$$SeasonImplCopyWith<$Res> {
  __$$SeasonImplCopyWithImpl(
      _$SeasonImpl _value, $Res Function(_$SeasonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? seasonNumber = null,
    Object? airDate = freezed,
    Object? episodeCount = null,
    Object? name = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? voteAverage = null,
  }) {
    return _then(_$SeasonImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == seasonNumber
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      null == episodeCount
          ? _value.episodeCount
          : episodeCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
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
class _$SeasonImpl implements _Season {
  const _$SeasonImpl(
      this.id,
      @JsonKey(name: "season_number") this.seasonNumber,
      @JsonKey(name: "air_date") this.airDate,
      @JsonKey(name: "episode_count") this.episodeCount,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "overview") this.overview,
      @JsonKey(name: "poster_path") this.posterPath,
      @JsonKey(name: "vote_average") this.voteAverage);

  factory _$SeasonImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeasonImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "season_number")
  final int seasonNumber;
  @override
  @JsonKey(name: "air_date")
  final DateTime? airDate;
  @override
  @JsonKey(name: "episode_count")
  final int episodeCount;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "overview")
  final String overview;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "vote_average")
  final double voteAverage;

  @override
  String toString() {
    return 'Season(id: $id, seasonNumber: $seasonNumber, airDate: $airDate, episodeCount: $episodeCount, name: $name, overview: $overview, posterPath: $posterPath, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.seasonNumber, seasonNumber) ||
                other.seasonNumber == seasonNumber) &&
            (identical(other.airDate, airDate) || other.airDate == airDate) &&
            (identical(other.episodeCount, episodeCount) ||
                other.episodeCount == episodeCount) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, seasonNumber, airDate,
      episodeCount, name, overview, posterPath, voteAverage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonImplCopyWith<_$SeasonImpl> get copyWith =>
      __$$SeasonImplCopyWithImpl<_$SeasonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeasonImplToJson(
      this,
    );
  }
}

abstract class _Season implements Season {
  const factory _Season(
      final int id,
      @JsonKey(name: "season_number") final int seasonNumber,
      @JsonKey(name: "air_date") final DateTime? airDate,
      @JsonKey(name: "episode_count") final int episodeCount,
      @JsonKey(name: "name") final String name,
      @JsonKey(name: "overview") final String overview,
      @JsonKey(name: "poster_path") final String? posterPath,
      @JsonKey(name: "vote_average") final double voteAverage) = _$SeasonImpl;

  factory _Season.fromJson(Map<String, dynamic> json) = _$SeasonImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "season_number")
  int get seasonNumber;
  @override
  @JsonKey(name: "air_date")
  DateTime? get airDate;
  @override
  @JsonKey(name: "episode_count")
  int get episodeCount;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "overview")
  String get overview;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "vote_average")
  double get voteAverage;
  @override
  @JsonKey(ignore: true)
  _$$SeasonImplCopyWith<_$SeasonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
