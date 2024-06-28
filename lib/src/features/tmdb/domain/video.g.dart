// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => _$VideoImpl(
      json['id'] as String,
      json['iso_639_1'] as String,
      json['iso_3166_1'] as String,
      json['key'] as String,
      json['name'] as String,
      json['site'] as String,
      (json['size'] as num).toInt(),
      json['type'] as String,
      json['official'] as bool,
      DateTime.parse(json['published_at'] as String),
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'iso_639_1': instance.iso6391,
      'iso_3166_1': instance.iso31661,
      'key': instance.key,
      'name': instance.name,
      'site': instance.site,
      'size': instance.size,
      'type': instance.type,
      'official': instance.official,
      'published_at': instance.publishedAt.toIso8601String(),
    };
