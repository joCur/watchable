// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateGroupMediaImpl _$$CreateGroupMediaImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateGroupMediaImpl(
      groupId: json['group_id'] as String,
      tmdbId: (json['tmdb_id'] as num).toInt(),
      mediaType: $enumDecode(_$GroupMediaTypeEnumMap, json['media_type']),
      addedBy: json['added_by'] as String,
    );

Map<String, dynamic> _$$CreateGroupMediaImplToJson(
        _$CreateGroupMediaImpl instance) =>
    <String, dynamic>{
      'group_id': instance.groupId,
      'tmdb_id': instance.tmdbId,
      'media_type': _$GroupMediaTypeEnumMap[instance.mediaType]!,
      'added_by': instance.addedBy,
    };

const _$GroupMediaTypeEnumMap = {
  GroupMediaType.movie: 'movie',
  GroupMediaType.tv: 'tv',
};
