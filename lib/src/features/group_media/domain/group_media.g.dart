// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupMediaImpl _$$GroupMediaImplFromJson(Map<String, dynamic> json) =>
    _$GroupMediaImpl(
      json['id'] as String,
      json['group_id'] as String,
      json['tmdb_id'] as int,
      $enumDecode(_$GroupMediaTypeEnumMap, json['media_type']),
      DateTime.parse(json['created_at'] as String),
      json['added_by'] as String,
      Media.fromJson(json['media'] as Map<String, dynamic>),
      Profile.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GroupMediaImplToJson(_$GroupMediaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group_id': instance.groupId,
      'tmdb_id': instance.tmdbId,
      'media_type': _$GroupMediaTypeEnumMap[instance.mediaType]!,
      'created_at': instance.createdAt.toIso8601String(),
      'added_by': instance.addedBy,
      'media': instance.media.toJson(),
      'profile': instance.profile.toJson(),
    };

const _$GroupMediaTypeEnumMap = {
  GroupMediaType.movie: 'movie',
  GroupMediaType.tv: 'tv',
};
