import 'package:freezed_annotation/freezed_annotation.dart';

import 'episode.dart';
import 'genre.dart';
import 'language.dart';
import 'production_company.dart';
import 'production_country.dart';
import 'season.dart';
import 'videos.dart';

part 'media.freezed.dart';
part 'media.g.dart';

@Freezed(unionKey: 'media_type')
class Media with _$Media {
  const factory Media.movie(
    int id,
    bool adult,
    @JsonKey(name: "backdrop_path") String? backdropPath,
    int budget,
    List<Genre> genres,
    String homepage,
    @JsonKey(name: "imdb_id") String imdbId,
    @JsonKey(name: "original_language") String originalLanguage,
    @JsonKey(name: "original_title") String originalTitle,
    String overview,
    double popularity,
    @JsonKey(name: "poster_path") String? posterPath,
    @JsonKey(name: "production_companies") List<ProductionCompany> productionCompanies,
    @JsonKey(name: "production_countries") List<ProductionCountry> productionCountries,
    @JsonKey(name: "release_date") DateTime releaseDate,
    int revenue,
    int runtime,
    @JsonKey(name: "spoken_languages") List<Language> spokenLanguages,
    String status,
    String tagline,
    String title,
    bool video,
    @JsonKey(name: "vote_average") double voteAverage,
    @JsonKey(name: "vote_count") int voteCount,
    Videos videos,
  ) = Movie;

  const factory Media.tv(
    int id,
    @JsonKey(name: "name") String title,
    String overview,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'first_air_date') DateTime releaseDate,
    @JsonKey(name: 'last_air_date') DateTime lastAirDate,
    @JsonKey(name: 'number_of_episodes') int numberOfEpisodes,
    @JsonKey(name: 'number_of_seasons') int numberOfSeasons,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'vote_average') double voteAverage,
    @JsonKey(name: 'vote_count') int voteCount,
    bool adult,
    @JsonKey(name: 'original_language') String originalLanguage,
    @JsonKey(name: 'original_name') String originalName,
    @JsonKey(name: 'origin_country') List<String> originCountry,
    @JsonKey(name: 'production_companies') List<ProductionCompany> productionCompanies,
    @JsonKey(name: 'production_countries') List<ProductionCountry> productionCountries,
    @JsonKey(name: 'spoken_languages') List<Language> spokenLanguages,
    String status,
    List<Genre> genres,
    @JsonKey(name: 'seasons') List<Season> seasons,
    @JsonKey(name: 'last_episode_to_air') Episode lastEpisodeToAir,
    Videos videos,
  ) = Tv;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}
