// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvDetailsImpl _$$TvDetailsImplFromJson(Map<String, dynamic> json) =>
    _$TvDetailsImpl(
      json['id'] as int,
      json['name'] as String,
      json['overview'] as String,
      json['backdrop_path'] as String,
      DateTime.parse(json['first_air_date'] as String),
      DateTime.parse(json['last_air_date'] as String),
      json['number_of_episodes'] as int,
      json['number_of_seasons'] as int,
      json['poster_path'] as String,
      (json['vote_average'] as num).toDouble(),
      json['vote_count'] as int,
      json['adult'] as bool,
      json['original_language'] as String,
      json['original_name'] as String,
      (json['origin_country'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      (json['production_companies'] as List<dynamic>)
          .map((e) => ProductionCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['production_countries'] as List<dynamic>)
          .map((e) => ProductionCountry.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['spoken_languages'] as List<dynamic>)
          .map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['status'] as String,
      (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['seasons'] as List<dynamic>)
          .map((e) => Season.fromJson(e as Map<String, dynamic>))
          .toList(),
      Episode.fromJson(json['last_episode_to_air'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TvDetailsImplToJson(_$TvDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.title,
      'overview': instance.overview,
      'backdrop_path': instance.backdropPath,
      'first_air_date': instance.releaseDate.toIso8601String(),
      'last_air_date': instance.lastAirDate.toIso8601String(),
      'number_of_episodes': instance.numberOfEpisodes,
      'number_of_seasons': instance.numberOfSeasons,
      'poster_path': instance.posterPath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'adult': instance.adult,
      'original_language': instance.originalLanguage,
      'original_name': instance.originalName,
      'origin_country': instance.originCountry,
      'production_companies': instance.productionCompanies,
      'production_countries': instance.productionCountries,
      'spoken_languages': instance.spokenLanguages,
      'status': instance.status,
      'genres': instance.genres,
      'seasons': instance.seasons,
      'last_episode_to_air': instance.lastEpisodeToAir,
    };
