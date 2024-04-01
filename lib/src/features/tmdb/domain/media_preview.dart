import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_preview.freezed.dart';
part 'media_preview.g.dart';

@Freezed(unionKey: 'media_type')
class MediaPreview with _$MediaPreview {
  const factory MediaPreview.movie(
    bool adult,
    int id,
    String overview,
    String title,
    @JsonKey(name: "poster_path") String? posterPath,
    @JsonKey(name: "vote_average") double voteAverage,
    @JsonKey(name: "backdrop_path") String? backdropPath,
  ) = MoviePreview;

  const factory MediaPreview.tv(
    bool adult,
    int id,
    @JsonKey(name: "original_name") String overview,
    @JsonKey(name: "name") String title,
    @JsonKey(name: "poster_path") String? posterPath,
    @JsonKey(name: "backdrop_path") String? backdropPath,
    @JsonKey(name: "popularity") double voteAverage,
  ) = TvPreview;

  const factory MediaPreview.person(
    bool adult,
    int id,
    @JsonKey(name: "original_name") String overview,
    @JsonKey(name: "name") String title,
    @JsonKey(name: "profile_path") String? posterPath,
    @JsonKey(name: "backdrop_path") String? backdropPath,
    @JsonKey(name: "popularity") double voteAverage,
  ) = PersonPreview;

  factory MediaPreview.fromJson(Map<String, dynamic> json) => _$MediaPreviewFromJson(json);
}
