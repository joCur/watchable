import 'package:freezed_annotation/freezed_annotation.dart';

import 'group_media_type.dart';

part 'group_media.freezed.dart';
part 'group_media.g.dart';

@freezed
class GroupMedia with _$GroupMedia {
  const factory GroupMedia(
    String id,
    @JsonKey(name: "group_id") String groupId,
    @JsonKey(name: "tmdb_id") int tmdbId,
    @JsonKey(name: "media_type") GroupMediaType mediaType,
    @JsonKey(name: "created_at") DateTime createdAt,
    @JsonKey(name: "added_by") String addedBy,
  ) = _GroupMedia;

  factory GroupMedia.fromJson(Map<String, dynamic> json) => _$GroupMediaFromJson(json);
}
