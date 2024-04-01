import 'package:freezed_annotation/freezed_annotation.dart';

import 'group_media_type.dart';

part 'create_group_media.freezed.dart';
part 'create_group_media.g.dart';

@freezed
class CreateGroupMedia with _$CreateGroupMedia {
  const factory CreateGroupMedia({
    @JsonKey(name: "group_id") required String groupId,
    @JsonKey(name: "tmdb_id") required int tmdbId,
    @JsonKey(name: "media_type") required GroupMediaType mediaType,
    @JsonKey(name: "added_by") required String addedBy,
  }) = _CreateGroupMedia;

  factory CreateGroupMedia.fromJson(Map<String, dynamic> json) => _$CreateGroupMediaFromJson(json);
}
