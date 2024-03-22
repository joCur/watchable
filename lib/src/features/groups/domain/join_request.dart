import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_request.freezed.dart';
part 'join_request.g.dart';

@freezed
class JoinRequest with _$JoinRequest {
  const factory JoinRequest(
    @JsonKey(name: "group_id") String groupId,
    @JsonKey(name: "user_id") String userId,
    @JsonKey(name: "created_at") DateTime createdAt,
  ) = _JoinRequest;

  factory JoinRequest.fromJson(Map<String, dynamic> json) => _$JoinRequestFromJson(json);
}
