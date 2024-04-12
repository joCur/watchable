// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_media_reaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupMediaReactionImpl _$$GroupMediaReactionImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupMediaReactionImpl(
      groupMediaId: json['group_media_id'] as String,
      userId: json['user_id'] as String,
      reaction: $enumDecode(_$MediaReactionEnumMap, json['reaction']),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$GroupMediaReactionImplToJson(
        _$GroupMediaReactionImpl instance) =>
    <String, dynamic>{
      'group_media_id': instance.groupMediaId,
      'user_id': instance.userId,
      'reaction': _$MediaReactionEnumMap[instance.reaction]!,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$MediaReactionEnumMap = {
  MediaReaction.watch: 'watch',
  MediaReaction.maybe: 'maybe',
  MediaReaction.pass: 'pass',
};
