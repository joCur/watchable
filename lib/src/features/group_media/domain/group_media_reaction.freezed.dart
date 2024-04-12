// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_media_reaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupMediaReaction _$GroupMediaReactionFromJson(Map<String, dynamic> json) {
  return _GroupMediaReaction.fromJson(json);
}

/// @nodoc
mixin _$GroupMediaReaction {
  @JsonKey(name: "group_media_id")
  String get groupMediaId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "reaction")
  MediaReaction get reaction => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupMediaReactionCopyWith<GroupMediaReaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupMediaReactionCopyWith<$Res> {
  factory $GroupMediaReactionCopyWith(
          GroupMediaReaction value, $Res Function(GroupMediaReaction) then) =
      _$GroupMediaReactionCopyWithImpl<$Res, GroupMediaReaction>;
  @useResult
  $Res call(
      {@JsonKey(name: "group_media_id") String groupMediaId,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "reaction") MediaReaction reaction,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class _$GroupMediaReactionCopyWithImpl<$Res, $Val extends GroupMediaReaction>
    implements $GroupMediaReactionCopyWith<$Res> {
  _$GroupMediaReactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupMediaId = null,
    Object? userId = null,
    Object? reaction = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      groupMediaId: null == groupMediaId
          ? _value.groupMediaId
          : groupMediaId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      reaction: null == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as MediaReaction,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupMediaReactionImplCopyWith<$Res>
    implements $GroupMediaReactionCopyWith<$Res> {
  factory _$$GroupMediaReactionImplCopyWith(_$GroupMediaReactionImpl value,
          $Res Function(_$GroupMediaReactionImpl) then) =
      __$$GroupMediaReactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "group_media_id") String groupMediaId,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "reaction") MediaReaction reaction,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class __$$GroupMediaReactionImplCopyWithImpl<$Res>
    extends _$GroupMediaReactionCopyWithImpl<$Res, _$GroupMediaReactionImpl>
    implements _$$GroupMediaReactionImplCopyWith<$Res> {
  __$$GroupMediaReactionImplCopyWithImpl(_$GroupMediaReactionImpl _value,
      $Res Function(_$GroupMediaReactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupMediaId = null,
    Object? userId = null,
    Object? reaction = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$GroupMediaReactionImpl(
      groupMediaId: null == groupMediaId
          ? _value.groupMediaId
          : groupMediaId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      reaction: null == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as MediaReaction,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupMediaReactionImpl implements _GroupMediaReaction {
  const _$GroupMediaReactionImpl(
      {@JsonKey(name: "group_media_id") required this.groupMediaId,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "reaction") required this.reaction,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$GroupMediaReactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupMediaReactionImplFromJson(json);

  @override
  @JsonKey(name: "group_media_id")
  final String groupMediaId;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "reaction")
  final MediaReaction reaction;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'GroupMediaReaction(groupMediaId: $groupMediaId, userId: $userId, reaction: $reaction, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupMediaReactionImpl &&
            (identical(other.groupMediaId, groupMediaId) ||
                other.groupMediaId == groupMediaId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reaction, reaction) ||
                other.reaction == reaction) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, groupMediaId, userId, reaction, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupMediaReactionImplCopyWith<_$GroupMediaReactionImpl> get copyWith =>
      __$$GroupMediaReactionImplCopyWithImpl<_$GroupMediaReactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupMediaReactionImplToJson(
      this,
    );
  }
}

abstract class _GroupMediaReaction implements GroupMediaReaction {
  const factory _GroupMediaReaction(
          {@JsonKey(name: "group_media_id") required final String groupMediaId,
          @JsonKey(name: "user_id") required final String userId,
          @JsonKey(name: "reaction") required final MediaReaction reaction,
          @JsonKey(name: "created_at") required final DateTime createdAt,
          @JsonKey(name: "updated_at") final DateTime? updatedAt}) =
      _$GroupMediaReactionImpl;

  factory _GroupMediaReaction.fromJson(Map<String, dynamic> json) =
      _$GroupMediaReactionImpl.fromJson;

  @override
  @JsonKey(name: "group_media_id")
  String get groupMediaId;
  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  @JsonKey(name: "reaction")
  MediaReaction get reaction;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$GroupMediaReactionImplCopyWith<_$GroupMediaReactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
