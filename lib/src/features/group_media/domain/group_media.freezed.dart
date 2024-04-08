// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupMedia _$GroupMediaFromJson(Map<String, dynamic> json) {
  return _GroupMedia.fromJson(json);
}

/// @nodoc
mixin _$GroupMedia {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "group_id")
  String get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "tmdb_id")
  int get tmdbId => throw _privateConstructorUsedError;
  @JsonKey(name: "media_type")
  GroupMediaType get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "added_by")
  String get addedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupMediaCopyWith<GroupMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupMediaCopyWith<$Res> {
  factory $GroupMediaCopyWith(
          GroupMedia value, $Res Function(GroupMedia) then) =
      _$GroupMediaCopyWithImpl<$Res, GroupMedia>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "group_id") String groupId,
      @JsonKey(name: "tmdb_id") int tmdbId,
      @JsonKey(name: "media_type") GroupMediaType mediaType,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "added_by") String addedBy});
}

/// @nodoc
class _$GroupMediaCopyWithImpl<$Res, $Val extends GroupMedia>
    implements $GroupMediaCopyWith<$Res> {
  _$GroupMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? tmdbId = null,
    Object? mediaType = null,
    Object? createdAt = null,
    Object? addedBy = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      addedBy: null == addedBy
          ? _value.addedBy
          : addedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupMediaImplCopyWith<$Res>
    implements $GroupMediaCopyWith<$Res> {
  factory _$$GroupMediaImplCopyWith(
          _$GroupMediaImpl value, $Res Function(_$GroupMediaImpl) then) =
      __$$GroupMediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "group_id") String groupId,
      @JsonKey(name: "tmdb_id") int tmdbId,
      @JsonKey(name: "media_type") GroupMediaType mediaType,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "added_by") String addedBy});
}

/// @nodoc
class __$$GroupMediaImplCopyWithImpl<$Res>
    extends _$GroupMediaCopyWithImpl<$Res, _$GroupMediaImpl>
    implements _$$GroupMediaImplCopyWith<$Res> {
  __$$GroupMediaImplCopyWithImpl(
      _$GroupMediaImpl _value, $Res Function(_$GroupMediaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? tmdbId = null,
    Object? mediaType = null,
    Object? createdAt = null,
    Object? addedBy = null,
  }) {
    return _then(_$GroupMediaImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      null == tmdbId
          ? _value.tmdbId
          : tmdbId // ignore: cast_nullable_to_non_nullable
              as int,
      null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as GroupMediaType,
      null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == addedBy
          ? _value.addedBy
          : addedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupMediaImpl implements _GroupMedia {
  const _$GroupMediaImpl(
      this.id,
      @JsonKey(name: "group_id") this.groupId,
      @JsonKey(name: "tmdb_id") this.tmdbId,
      @JsonKey(name: "media_type") this.mediaType,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "added_by") this.addedBy);

  factory _$GroupMediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupMediaImplFromJson(json);

  @override
  final String id;
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
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "added_by")
  final String addedBy;

  @override
  String toString() {
    return 'GroupMedia(id: $id, groupId: $groupId, tmdbId: $tmdbId, mediaType: $mediaType, createdAt: $createdAt, addedBy: $addedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupMediaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.tmdbId, tmdbId) || other.tmdbId == tmdbId) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.addedBy, addedBy) || other.addedBy == addedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, groupId, tmdbId, mediaType, createdAt, addedBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupMediaImplCopyWith<_$GroupMediaImpl> get copyWith =>
      __$$GroupMediaImplCopyWithImpl<_$GroupMediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupMediaImplToJson(
      this,
    );
  }
}

abstract class _GroupMedia implements GroupMedia {
  const factory _GroupMedia(
      final String id,
      @JsonKey(name: "group_id") final String groupId,
      @JsonKey(name: "tmdb_id") final int tmdbId,
      @JsonKey(name: "media_type") final GroupMediaType mediaType,
      @JsonKey(name: "created_at") final DateTime createdAt,
      @JsonKey(name: "added_by") final String addedBy) = _$GroupMediaImpl;

  factory _GroupMedia.fromJson(Map<String, dynamic> json) =
      _$GroupMediaImpl.fromJson;

  @override
  String get id;
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
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "added_by")
  String get addedBy;
  @override
  @JsonKey(ignore: true)
  _$$GroupMediaImplCopyWith<_$GroupMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
