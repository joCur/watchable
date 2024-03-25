// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JoinRequest _$JoinRequestFromJson(Map<String, dynamic> json) {
  return _JoinRequest.fromJson(json);
}

/// @nodoc
mixin _$JoinRequest {
  @JsonKey(name: "group_id")
  String get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JoinRequestCopyWith<JoinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinRequestCopyWith<$Res> {
  factory $JoinRequestCopyWith(
          JoinRequest value, $Res Function(JoinRequest) then) =
      _$JoinRequestCopyWithImpl<$Res, JoinRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "group_id") String groupId,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "created_at") DateTime createdAt});
}

/// @nodoc
class _$JoinRequestCopyWithImpl<$Res, $Val extends JoinRequest>
    implements $JoinRequestCopyWith<$Res> {
  _$JoinRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? userId = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JoinRequestImplCopyWith<$Res>
    implements $JoinRequestCopyWith<$Res> {
  factory _$$JoinRequestImplCopyWith(
          _$JoinRequestImpl value, $Res Function(_$JoinRequestImpl) then) =
      __$$JoinRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "group_id") String groupId,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "created_at") DateTime createdAt});
}

/// @nodoc
class __$$JoinRequestImplCopyWithImpl<$Res>
    extends _$JoinRequestCopyWithImpl<$Res, _$JoinRequestImpl>
    implements _$$JoinRequestImplCopyWith<$Res> {
  __$$JoinRequestImplCopyWithImpl(
      _$JoinRequestImpl _value, $Res Function(_$JoinRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? userId = null,
    Object? createdAt = null,
  }) {
    return _then(_$JoinRequestImpl(
      null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinRequestImpl with DiagnosticableTreeMixin implements _JoinRequest {
  const _$JoinRequestImpl(
      @JsonKey(name: "group_id") this.groupId,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "created_at") this.createdAt);

  factory _$JoinRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinRequestImplFromJson(json);

  @override
  @JsonKey(name: "group_id")
  final String groupId;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JoinRequest(groupId: $groupId, userId: $userId, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JoinRequest'))
      ..add(DiagnosticsProperty('groupId', groupId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinRequestImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupId, userId, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinRequestImplCopyWith<_$JoinRequestImpl> get copyWith =>
      __$$JoinRequestImplCopyWithImpl<_$JoinRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinRequestImplToJson(
      this,
    );
  }
}

abstract class _JoinRequest implements JoinRequest {
  const factory _JoinRequest(
          @JsonKey(name: "group_id") final String groupId,
          @JsonKey(name: "user_id") final String userId,
          @JsonKey(name: "created_at") final DateTime createdAt) =
      _$JoinRequestImpl;

  factory _JoinRequest.fromJson(Map<String, dynamic> json) =
      _$JoinRequestImpl.fromJson;

  @override
  @JsonKey(name: "group_id")
  String get groupId;
  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$JoinRequestImplCopyWith<_$JoinRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
