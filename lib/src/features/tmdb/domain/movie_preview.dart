import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_preview.dart';

part 'movie_preview.freezed.dart';
part 'movie_preview.g.dart';

@freezed
sealed class MoviePreview with _$MoviePreview implements Media {
  @Implements<Media>()
  const factory MoviePreview({
    required bool adult,
    @JsonKey(name: "genre_ids") required List<int> genreIds,
    required int id,
    @JsonKey(name: "original_language") required String originalLanguage,
    @JsonKey(name: "original_title") required String originalTitle,
    required String overview,
    required double popularity,
    @JsonKey(name: "poster_path") required String posterPath,
    @JsonKey(name: "release_date") required String releaseDate,
    required String title,
    required bool video,
    @JsonKey(name: "vote_average") required double voteAverage,
    @JsonKey(name: "vote_count") required int voteCount,
    @JsonKey(name: "backdrop_path") String? backdropPath,
  }) = _MoviePreview;

  factory MoviePreview.fromJson(Map<String, dynamic> json) => _$MoviePreviewFromJson(json);
}
