import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watchable/src/features/tmdb/domain/episode.dart';
import 'package:watchable/src/features/tmdb/domain/genre.dart';
import 'package:watchable/src/features/tmdb/domain/language.dart';
import 'package:watchable/src/features/tmdb/domain/season.dart';

import 'media_details.dart';
import 'production_company.dart';
import 'production_country.dart';

part 'tv_details.freezed.dart';
part 'tv_details.g.dart';

@freezed
class TvDetails with _$TvDetails implements MediaDetails {
  @Implements<MediaDetails>()
  const factory TvDetails(
    int id,
    @JsonKey(name: "name") String title,
    String overview,
    @JsonKey(name: 'backdrop_path') String backdropPath,
    @JsonKey(name: 'first_air_date') DateTime releaseDate,
    @JsonKey(name: 'last_air_date') DateTime lastAirDate,
    @JsonKey(name: 'number_of_episodes') int numberOfEpisodes,
    @JsonKey(name: 'number_of_seasons') int numberOfSeasons,
    @JsonKey(name: 'poster_path') String posterPath,
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
  ) = _TvDetails;

  factory TvDetails.fromJson(Map<String, dynamic> json) => _$TvDetailsFromJson(json);
}
