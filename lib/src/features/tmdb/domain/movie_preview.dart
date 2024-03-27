import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_preview.dart';

part 'movie_preview.freezed.dart';
part 'movie_preview.g.dart';

@freezed
sealed class MoviePreview with _$MoviePreview implements MediaPreview {
  @Implements<MediaPreview>()
  const factory MoviePreview({
    required bool adult,
    required int id,
    required String overview,
    @JsonKey(name: "poster_path") required String posterPath,
    @JsonKey(name: "vote_average") required double voteAverage,
    @JsonKey(name: "backdrop_path") String? backdropPath,
  }) = _MoviePreview;

  factory MoviePreview.fromJson(Map<String, dynamic> json) => _$MoviePreviewFromJson(json);
}
