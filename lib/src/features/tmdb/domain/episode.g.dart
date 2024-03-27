// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpisodeImpl _$$EpisodeImplFromJson(Map<String, dynamic> json) =>
    _$EpisodeImpl(
      id: json['id'] as int,
      episodeNumber: json['episode_number'] as int,
      airDate: DateTime.parse(json['air_date'] as String),
      name: json['name'] as String,
      overview: json['overview'] as String,
      stillPath: json['still_path'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
      runtime: json['runtime'] as int,
    );

Map<String, dynamic> _$$EpisodeImplToJson(_$EpisodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'episode_number': instance.episodeNumber,
      'air_date': instance.airDate.toIso8601String(),
      'name': instance.name,
      'overview': instance.overview,
      'still_path': instance.stillPath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'runtime': instance.runtime,
    };
