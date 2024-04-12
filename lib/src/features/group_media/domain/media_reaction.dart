import 'package:freezed_annotation/freezed_annotation.dart';

enum MediaReaction {
  @JsonValue('watch')
  watch,
  @JsonValue('maybe')
  maybe,
  @JsonValue('pass')
  pass,
}
