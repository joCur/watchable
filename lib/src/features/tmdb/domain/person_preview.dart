import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_preview.dart';

part 'person_preview.freezed.dart';
part 'person_preview.g.dart';

@freezed
class PersonPreview with _$PersonPreview implements MediaPreview {
  @Implements<MediaPreview>()
  const factory PersonPreview({
    required bool adult,
    required int id,
    @JsonKey(name: "original_name") required String overview,
    @JsonKey(name: "name") required String title,
    @JsonKey(name: "profile_path") String? posterPath,
    @JsonKey(name: "backdrop_path") String? backdropPath,
    @JsonKey(name: "popularity") required double voteAverage,
  }) = _PersonPreview;

  factory PersonPreview.fromJson(Map<String, dynamic> json) => _$PersonPreviewFromJson(json);
}
