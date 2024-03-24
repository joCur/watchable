import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'role.dart';

part 'group_member.freezed.dart';
part 'group_member.g.dart';

@freezed
class GroupMember with _$GroupMember {
  const factory GroupMember(
    @JsonKey(name: "user_id") String userId,
    @JsonKey(name: "group_id") String groupId,
    @JsonKey(name: "created_at") DateTime createdAt,
    Role role,
  ) = _GroupMember;

  factory GroupMember.fromJson(Map<String, dynamic> json) => _$GroupMemberFromJson(json);
}
