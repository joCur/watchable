import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watchable/src/features/group_media/domain/media_reaction.dart';

part 'group_media_reaction.freezed.dart';
part 'group_media_reaction.g.dart';

@freezed
class GroupMediaReaction with _$GroupMediaReaction {
  const factory GroupMediaReaction({
    @JsonKey(name: "group_media_id") required String groupMediaId,
    @JsonKey(name: "user_id") required String userId,
    @JsonKey(name: "reaction") required MediaReaction reaction,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _GroupMediaReaction;

  factory GroupMediaReaction.fromJson(Map<String, dynamic> json) => _$GroupMediaReactionFromJson(json);
}
