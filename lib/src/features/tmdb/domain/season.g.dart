// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeasonImpl _$$SeasonImplFromJson(Map<String, dynamic> json) => _$SeasonImpl(
      (json['id'] as num).toInt(),
      (json['season_number'] as num).toInt(),
      json['air_date'] == null
          ? null
          : DateTime.parse(json['air_date'] as String),
      (json['episode_count'] as num).toInt(),
      json['name'] as String,
      json['overview'] as String,
      json['poster_path'] as String?,
      (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$$SeasonImplToJson(_$SeasonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'season_number': instance.seasonNumber,
      'air_date': instance.airDate?.toIso8601String(),
      'episode_count': instance.episodeCount,
      'name': instance.name,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'vote_average': instance.voteAverage,
    };
