import 'package:freezed_annotation/freezed_annotation.dart';

enum GroupMediaType {
  @JsonValue('movie')
  movie,
  @JsonValue('tv')
  tv,
}
