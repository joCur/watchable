import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_preview.dart';

part 'tv_preview.freezed.dart';
part 'tv_preview.g.dart';

@freezed
sealed class TvPreview with _$TvPreview implements MediaPreview {
  @Implements<MediaPreview>()
  const factory TvPreview({
    required bool adult,
    required int id,
    required String overview,
    @JsonKey(name: "poster_path") required String posterPath,
    @JsonKey(name: "vote_average") required double voteAverage,
    @JsonKey(name: "backdrop_path") String? backdropPath,
  }) = _TvPreview;

  factory TvPreview.fromJson(Map<String, dynamic> json) => _$TvPreviewFromJson(json);
}
