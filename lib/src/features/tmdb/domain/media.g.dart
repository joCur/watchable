// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImpl _$$MovieImplFromJson(Map<String, dynamic> json) => _$MovieImpl(
      json['id'] as int,
      json['adult'] as bool,
      json['backdrop_path'] as String?,
      json['budget'] as int,
      (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['homepage'] as String,
      json['imdb_id'] as String,
      json['original_language'] as String,
      json['original_title'] as String,
      json['overview'] as String,
      (json['popularity'] as num).toDouble(),
      json['poster_path'] as String?,
      (json['production_companies'] as List<dynamic>)
          .map((e) => ProductionCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['production_countries'] as List<dynamic>)
          .map((e) => ProductionCountry.fromJson(e as Map<String, dynamic>))
          .toList(),
      DateTime.parse(json['release_date'] as String),
      json['revenue'] as int,
      json['runtime'] as int,
      (json['spoken_languages'] as List<dynamic>)
          .map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['status'] as String,
      json['tagline'] as String,
      json['title'] as String,
      json['video'] as bool,
      (json['vote_average'] as num).toDouble(),
      json['vote_count'] as int,
      Videos.fromJson(json['videos'] as Map<String, dynamic>),
      $type: json['media_type'] as String?,
    );

Map<String, dynamic> _$$MovieImplToJson(_$MovieImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'budget': instance.budget,
      'genres': instance.genres.map((e) => e.toJson()).toList(),
      'homepage': instance.homepage,
      'imdb_id': instance.imdbId,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'production_companies':
          instance.productionCompanies.map((e) => e.toJson()).toList(),
      'production_countries':
          instance.productionCountries.map((e) => e.toJson()).toList(),
      'release_date': instance.releaseDate.toIso8601String(),
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'spoken_languages':
          instance.spokenLanguages.map((e) => e.toJson()).toList(),
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'videos': instance.videos.toJson(),
      'media_type': instance.$type,
    };

_$TvImpl _$$TvImplFromJson(Map<String, dynamic> json) => _$TvImpl(
      json['id'] as int,
      json['name'] as String,
      json['overview'] as String,
      json['backdrop_path'] as String?,
      DateTime.parse(json['first_air_date'] as String),
      DateTime.parse(json['last_air_date'] as String),
      json['number_of_episodes'] as int,
      json['number_of_seasons'] as int,
      json['poster_path'] as String?,
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
      Videos.fromJson(json['videos'] as Map<String, dynamic>),
      $type: json['media_type'] as String?,
    );

Map<String, dynamic> _$$TvImplToJson(_$TvImpl instance) => <String, dynamic>{
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
      'production_companies':
          instance.productionCompanies.map((e) => e.toJson()).toList(),
      'production_countries':
          instance.productionCountries.map((e) => e.toJson()).toList(),
      'spoken_languages':
          instance.spokenLanguages.map((e) => e.toJson()).toList(),
      'status': instance.status,
      'genres': instance.genres.map((e) => e.toJson()).toList(),
      'seasons': instance.seasons.map((e) => e.toJson()).toList(),
      'last_episode_to_air': instance.lastEpisodeToAir.toJson(),
      'videos': instance.videos.toJson(),
      'media_type': instance.$type,
    };
