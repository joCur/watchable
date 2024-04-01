// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_group_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateGroupMedia _$CreateGroupMediaFromJson(Map<String, dynamic> json) {
  return _CreateGroupMedia.fromJson(json);
}

/// @nodoc
mixin _$CreateGroupMedia {
  @JsonKey(name: "group_id")
  String get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "tmdb_id")
  int get tmdbId => throw _privateConstructorUsedError;
  @JsonKey(name: "media_type")
  GroupMediaType get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: "added_by")
  String get addedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateGroupMediaCopyWith<CreateGroupMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGroupMediaCopyWith<$Res> {
  factory $CreateGroupMediaCopyWith(
          CreateGroupMedia value, $Res Function(CreateGroupMedia) then) =
      _$CreateGroupMediaCopyWithImpl<$Res, CreateGroupMedia>;
  @useResult
  $Res call(
      {@JsonKey(name: "group_id") String groupId,
      @JsonKey(name: "tmdb_id") int tmdbId,
      @JsonKey(name: "media_type") GroupMediaType mediaType,
      @JsonKey(name: "added_by") String addedBy});
}

/// @nodoc
class _$CreateGroupMediaCopyWithImpl<$Res, $Val extends CreateGroupMedia>
    implements $CreateGroupMediaCopyWith<$Res> {
  _$CreateGroupMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? tmdbId = null,
    Object? mediaType = null,
    Object? addedBy = null,
  }) {
    return _then(_value.copyWith(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      tmdbId: null == tmdbId
          ? _value.tmdbId
          : tmdbId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as GroupMediaType,
      addedBy: null == addedBy
          ? _value.addedBy
          : addedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateGroupMediaImplCopyWith<$Res>
    implements $CreateGroupMediaCopyWith<$Res> {
  factory _$$CreateGroupMediaImplCopyWith(_$CreateGroupMediaImpl value,
          $Res Function(_$CreateGroupMediaImpl) then) =
      __$$CreateGroupMediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "group_id") String groupId,
      @JsonKey(name: "tmdb_id") int tmdbId,
      @JsonKey(name: "media_type") GroupMediaType mediaType,
      @JsonKey(name: "added_by") String addedBy});
}

/// @nodoc
class __$$CreateGroupMediaImplCopyWithImpl<$Res>
    extends _$CreateGroupMediaCopyWithImpl<$Res, _$CreateGroupMediaImpl>
    implements _$$CreateGroupMediaImplCopyWith<$Res> {
  __$$CreateGroupMediaImplCopyWithImpl(_$CreateGroupMediaImpl _value,
      $Res Function(_$CreateGroupMediaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? tmdbId = null,
    Object? mediaType = null,
    Object? addedBy = null,
  }) {
    return _then(_$CreateGroupMediaImpl(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      tmdbId: null == tmdbId
          ? _value.tmdbId
          : tmdbId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as GroupMediaType,
      addedBy: null == addedBy
          ? _value.addedBy
          : addedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateGroupMediaImpl implements _CreateGroupMedia {
  const _$CreateGroupMediaImpl(
      {@JsonKey(name: "group_id") required this.groupId,
      @JsonKey(name: "tmdb_id") required this.tmdbId,
      @JsonKey(name: "media_type") required this.mediaType,
      @JsonKey(name: "added_by") required this.addedBy});

  factory _$CreateGroupMediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateGroupMediaImplFromJson(json);

  @override
  @JsonKey(name: "group_id")
  final String groupId;
  @override
  @JsonKey(name: "tmdb_id")
  final int tmdbId;
  @override
  @JsonKey(name: "media_type")
  final GroupMediaType mediaType;
  @override
  @JsonKey(name: "added_by")
  final String addedBy;

  @override
  String toString() {
    return 'CreateGroupMedia(groupId: $groupId, tmdbId: $tmdbId, mediaType: $mediaType, addedBy: $addedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGroupMediaImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.tmdbId, tmdbId) || other.tmdbId == tmdbId) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.addedBy, addedBy) || other.addedBy == addedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, groupId, tmdbId, mediaType, addedBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroupMediaImplCopyWith<_$CreateGroupMediaImpl> get copyWith =>
      __$$CreateGroupMediaImplCopyWithImpl<_$CreateGroupMediaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateGroupMediaImplToJson(
      this,
    );
  }
}

abstract class _CreateGroupMedia implements CreateGroupMedia {
  const factory _CreateGroupMedia(
          {@JsonKey(name: "group_id") required final String groupId,
          @JsonKey(name: "tmdb_id") required final int tmdbId,
          @JsonKey(name: "media_type") required final GroupMediaType mediaType,
          @JsonKey(name: "added_by") required final String addedBy}) =
      _$CreateGroupMediaImpl;

  factory _CreateGroupMedia.fromJson(Map<String, dynamic> json) =
      _$CreateGroupMediaImpl.fromJson;

  @override
  @JsonKey(name: "group_id")
  String get groupId;
  @override
  @JsonKey(name: "tmdb_id")
  int get tmdbId;
  @override
  @JsonKey(name: "media_type")
  GroupMediaType get mediaType;
  @override
  @JsonKey(name: "added_by")
  String get addedBy;
  @override
  @JsonKey(ignore: true)
  _$$CreateGroupMediaImplCopyWith<_$CreateGroupMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
