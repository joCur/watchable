// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupMediaImpl _$$GroupMediaImplFromJson(Map<String, dynamic> json) =>
    _$GroupMediaImpl(
      id: json['id'] as String,
      groupId: json['group_id'] as String,
      tmdbId: json['tmdb_id'] as int,
      mediaType: $enumDecode(_$GroupMediaTypeEnumMap, json['media_type']),
      createdAt: DateTime.parse(json['created_at'] as String),
      addedBy: json['added_by'] as String,
    );

Map<String, dynamic> _$$GroupMediaImplToJson(_$GroupMediaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group_id': instance.groupId,
      'tmdb_id': instance.tmdbId,
      'media_type': _$GroupMediaTypeEnumMap[instance.mediaType]!,
      'created_at': instance.createdAt.toIso8601String(),
      'added_by': instance.addedBy,
    };

const _$GroupMediaTypeEnumMap = {
  GroupMediaType.movie: 'movie',
  GroupMediaType.tv: 'tv',
};
