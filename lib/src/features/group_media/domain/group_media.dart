import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watchable/src/features/group_media/domain/group_media_type.dart';

part 'group_media.freezed.dart';
part 'group_media.g.dart';

@freezed
class GroupMedia with _$GroupMedia {
  const factory GroupMedia({
    required String id,
    @JsonKey(name: "group_id") required String groupId,
    @JsonKey(name: "tmdb_id") required int tmdbId,
    @JsonKey(name: "media_type") required GroupMediaType mediaType,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "added_by") required String addedBy,
  }) = _GroupMedia;

  factory GroupMedia.fromJson(Map<String, dynamic> json) => _$GroupMediaFromJson(json);
}
