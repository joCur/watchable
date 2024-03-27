import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watchable/src/features/tmdb/domain/production_country.dart';

import 'genre.dart';
import 'language.dart';
import 'media_details.dart';
import 'production_company.dart';

part 'movie_details.freezed.dart';
part 'movie_details.g.dart';

@freezed
class MovieDetails with _$MovieDetails implements MediaDetails {
  @Implements<MediaDetails>()
  const factory MovieDetails(
    int id,
    bool adult,
    @JsonKey(name: "backdrop_path") String backdropPath,
    @JsonKey(name: "belongs_to_collection") String? belongsToCollection,
    int budget,
    List<Genre> genres,
    String homepage,
    @JsonKey(name: "imdb_id") String imdbId,
    @JsonKey(name: "original_language") String originalLanguage,
    @JsonKey(name: "original_title") String originalTitle,
    String overview,
    double popularity,
    @JsonKey(name: "poster_path") String posterPath,
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
  ) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) => _$MovieDetailsFromJson(json);
}
