import 'package:freezed_annotation/freezed_annotation.dart';

enum Role {
  @JsonValue("owner")
  owner,
  @JsonValue("manager")
  manager,
  @JsonValue("member")
  member,
}
